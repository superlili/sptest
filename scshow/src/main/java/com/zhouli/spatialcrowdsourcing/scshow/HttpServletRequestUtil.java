package com.zhouli.spatialcrowdsourcing.scshow;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by 王婷 on 2018/11/8.
 */
public class HttpServletRequestUtil {
    public static int getInt(HttpServletRequest request, String key){
        try{
            return Integer.decode(request.getParameter(key));
        }catch (Exception e){
            return -1;
        }
    }
    public static Long getLong(HttpServletRequest request, String key){
        try{
            return Long.valueOf(request.getParameter(key));
        }catch (Exception e){
            return -1L;
        }
    }
    public static Double getDouble(HttpServletRequest request, String key){
        try{
            return Double.valueOf(request.getParameter(key));
        }catch (Exception e){
            return -1d;
        }
    }

    public static Boolean getBoolean(HttpServletRequest request, String key){
        try{
            return Boolean.valueOf(request.getParameter(key));
        }catch (Exception e){
            return false;
        }
    }
    public static  String getString(HttpServletRequest request, String key){
        try{
            String result = request.getParameter(key);
            if(request != null){
                result = result.trim();
            }
            if("".equals(result)){
                return null;
            }
            return result;
        }catch (Exception e){
            return null;
        }
    }
}
