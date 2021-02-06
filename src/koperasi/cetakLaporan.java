/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package koperasi;

import java.io.File;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;
import java.sql.Connection;

/**
 *
 * @author windows
 */
public class cetakLaporan {
     private static  Connection koneksi;
    public cetakLaporan(String laporan){
    try {
        koneksi = new KoperasiDatabase().getConnection();
    
        File laporan_file = new File(laporan);
        JasperReport jasperReport = (JasperReport) JRLoader.loadObject(laporan_file);
        JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,null,koneksi);
        JasperViewer.viewReport(jasperPrint, false);
   }catch (Exception e){
  System.out.print(e.getMessage());
    }
    }       
    
}
