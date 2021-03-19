package in.co.rays.ors.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;

import in.co.rays.ors.bean.BaseBean;
import in.co.rays.ors.bean.CollegeBean;
import in.co.rays.ors.bean.UserBean;
import in.co.rays.ors.exception.ApplicationException;
import in.co.rays.ors.model.CollegeModel;
import in.co.rays.ors.util.DataUtility;
import in.co.rays.ors.util.PropertyReader;
import in.co.rays.ors.util.ServletUtility;


/**
 * College List functionality Controller. Performs operation for list, search
 * and delete operations of College
 * 
 * @author SunilOS
 * @version 1.0
 * Copyright (c) SunilOS
 */
@ WebServlet(name="CollegeListCtl",urlPatterns={"/ctl/CollegeListCtl"})
public class CollegeListCtl extends BaseCtl {

    private static Logger log = Logger.getLogger(CollegeListCtl.class);
    
    
    protected void preload(HttpServletRequest request)
    
   {
    	CollegeModel collegeModel = new CollegeModel();
    	
    	try {
	           List collegeList = collegeModel.list();
	           request.setAttribute("collegeList", collegeList);
		} catch (Exception e) {
			log.error(e);
		}      
   }
     @Override
    protected BaseBean populateBean(HttpServletRequest request) {
        CollegeBean bean = new CollegeBean();

        bean.setName(DataUtility.getString(request.getParameter("name")));
        bean.setCity(DataUtility.getString(request.getParameter("city")));
        bean.setId(DataUtility.getInt(request.getParameter("clist")));
        return bean;
    }

    /**
     * Contains display logic
     */
    @Override
    protected void doGet(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        int pageNo = 1;
        int pageSize = DataUtility.getInt(PropertyReader.getValue("page.size"));

        CollegeBean bean = (CollegeBean) populateBean(request);

        String [] ids = request.getParameterValues("ids");
        CollegeModel model = new CollegeModel();

        List list = null;

        try {
            list = model.search(bean, pageNo, pageSize);
        
        if (list == null || list.size() == 0) {
            ServletUtility.setErrorMessage("No record found ", request);
        }

        ServletUtility.setList(list, request);
        ServletUtility.setPageNo(pageNo, request);
        ServletUtility.setPageSize(pageSize, request);
        ServletUtility.forward(getView(), request, response);
    }
        catch (ApplicationException e) {
            log.error(e);
            ServletUtility.handleException(e, request, response);
            return;
        }
    }


    /**
     * Contains submit logic
     */
    @Override
    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {

        log.debug("CollegeListCtl doPost Start");

        List list = null;

        int pageNo = DataUtility.getInt(request.getParameter("pageNo"));
        int pageSize = DataUtility.getInt(request.getParameter("pageSize"));

        pageNo = (pageNo == 0) ? 1 : pageNo;
        pageSize = (pageSize == 0) ? DataUtility.getInt(PropertyReader.getValue("page.size")) : pageSize;

       
        String op = DataUtility.getString(request.getParameter("operation"));
        
        String [] ids = request.getParameterValues("ids");
        CollegeModel model = new CollegeModel();
        CollegeBean bean = (CollegeBean) populateBean(request);

                if (OP_SEARCH.equalsIgnoreCase(op)) {
                    pageNo = 1;
                } 
                else if (OP_NEXT.equalsIgnoreCase(op)) {
                    pageNo++;
                } 
                else if (OP_PREVIOUS.equalsIgnoreCase(op) && pageNo > 1) {
                    pageNo--;
                }
                else if (OP_NEW.equalsIgnoreCase(op)) {
    			ServletUtility.redirect(ORSView.COLLEGE_CTL, request, response);
    			return;
    		}else if (OP_RESET.equalsIgnoreCase(op)) {
    			ServletUtility.redirect(ORSView.COLLEGE_LIST_CTL, request, response);
    			return;
    		}  
            else if (OP_DELETE.equalsIgnoreCase(op)) {
                pageNo = 1;
                if (ids != null && ids.length > 0) {
                   CollegeBean deletebean = new CollegeBean();
               // 	UserBean deletebean = new UserBean();
                    for (String id : ids) {
                        deletebean.setId(DataUtility.getInt(id));
                        try {
							model.delete(deletebean);
						} catch (ApplicationException e) {
							ServletUtility.handleException(e, request, response);
							return;
						}ServletUtility.setSuccessMessage("College Data Successfully Deleted", request);
                    }
                } 
                else {
                    ServletUtility.setErrorMessage(
                            "Select at least one record", request);
                }
            }
            try {
				list = model.search(bean, pageNo, pageSize);
			} catch (ApplicationException e) {
				log.error(e);
				ServletUtility.handleException(e, request, response);
				return;
			}
         //   ServletUtility.setList(list, request);
            
            if (list == null || list.size() == 0 && !OP_DELETE.equalsIgnoreCase(op)) {
                ServletUtility.setErrorMessage("No record found ", request);
            }
            ServletUtility.setList(list, request);

            ServletUtility.setPageNo(pageNo, request);
            ServletUtility.setPageSize(pageSize, request);
            ServletUtility.forward(getView(), request, response);
            log.debug("CollegeListCtl doPost End");
    }
    @Override
    protected String getView() {
        return ORSView.COLLEGE_LIST_VIEW;
    }
}