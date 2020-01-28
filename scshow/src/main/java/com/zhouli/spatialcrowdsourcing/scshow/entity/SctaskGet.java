package com.zhouli.spatialcrowdsourcing.scshow.entity;

import java.io.Serializable;
import java.math.BigDecimal;
import java.sql.Blob;

public class SctaskGet implements Serializable {
    private String sc_get_pusher_id;
    private String sc_get_theme;
    private BigDecimal sc_get_location_latitude;
    private BigDecimal sc_get_location_longitude;
    private String sc_get_content;
    private String sc_get_professional;
    private String sc_get_finish;
    private String sc_get_timelimit;
    private String sc_get_bounty;
    private String finish_img;

    public String getSc_get_pusher_id() {
        return sc_get_pusher_id;
    }

    public void setSc_get_pusher_id(String sc_get_pusher_id) {
        this.sc_get_pusher_id = sc_get_pusher_id;
    }

    public String getSc_get_theme() {
        return sc_get_theme;
    }

    public void setSc_get_theme(String sc_get_theme) {
        this.sc_get_theme = sc_get_theme;
    }

    public BigDecimal getSc_get_location_latitude() {
        return sc_get_location_latitude;
    }

    public void setSc_get_location_latitude(BigDecimal sc_get_location_latitude) {
        this.sc_get_location_latitude = sc_get_location_latitude;
    }

    public BigDecimal getSc_get_location_longitude() {
        return sc_get_location_longitude;
    }

    public void setSc_get_location_longitude(BigDecimal sc_get_location_longitude) {
        this.sc_get_location_longitude = sc_get_location_longitude;
    }

    public String getSc_get_content() {
        return sc_get_content;
    }

    public void setSc_get_content(String sc_get_content) {
        this.sc_get_content = sc_get_content;
    }

    public String getSc_get_professional() {
        return sc_get_professional;
    }

    public void setSc_get_professional(String sc_get_professional) {
        this.sc_get_professional = sc_get_professional;
    }

    public String getSc_get_finish() {
        return sc_get_finish;
    }

    public void setSc_get_finish(String sc_get_finish) {
        this.sc_get_finish = sc_get_finish;
    }

    public String getSc_get_timelimit() {
        return sc_get_timelimit;
    }

    public void setSc_get_timelimit(String sc_get_timelimit) {
        this.sc_get_timelimit = sc_get_timelimit;
    }

    public String getSc_get_bounty() {
        return sc_get_bounty;
    }

    public void setSc_get_bounty(String sc_get_bounty) {
        this.sc_get_bounty = sc_get_bounty;
    }

    public String getFinish_img() {
        return finish_img;
    }

    public void setFinish_img(String finish_img) {
        this.finish_img = finish_img;
    }
}
