/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package generalServer;

import com.mysql.jdbc.ResultSet;
import com.mysql.jdbc.ResultSetMetaData;
import java.awt.Dimension;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JScrollPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;
import javax.swing.table.TableColumn;
import javax.swing.table.TableColumnModel;

/**
 *
 * @author sukalyan14
 */
public class ViewPerformanceInTable extends javax.swing.JFrame {
    
    JTable table;

    /**
     * Creates new form viewPerformanceActual
     */
    public ViewPerformanceInTable() {
        initComponents();
    }
    
    /*public viewPerformanceActual()    {
        initComponents();
       /* 
        // getting the meta data of the retrieved database
        ResultSetMetaData performance=(ResultSetMetaData) res.getMetaData();
        // getting the number of columns in the resultant record
        int colCount=performance.getColumnCount();
        
        while(res.next())
        {
            Object[] rowData=new Object[colCount];
            
        }
        
    }*/

    void displayRecord(DefaultTableModel model,ResultSet row) throws SQLException
    {
        ResultSetMetaData meta= (ResultSetMetaData) row.getMetaData();
        if(model==null) 
        {
            //setMinimumSize(new Dimension(640, 480));
            model= new DefaultTableModel();
            //jTable1.setPreferredSize(new Dimension(500, 500));
            //model.getColumn(1).setWidth(36);
            
        }
        // creating the table headers
        String cols[]=new String[meta.getColumnCount()];
        for(int i=0;i< cols.length;++i)
        {
            cols[i]= meta.getColumnLabel(i+1);
            
        }

        model.setColumnIdentifiers(cols);
       // table.setModel(model);      // added
        //TableColumn col;            // added
       // model.getColumn(1).setWidth(36);
        /*for(int i=0;i<table.getColumnCount();i++)   // added
        {   
            col=table.getColumnModel().getColumn(i);
            col.setPreferredWidth(100);
            col.setMaxWidth(500);
        }*/
        
        int r=0;              // added 
        while(row.next())
        {
            
            Object data[]= new Object[cols.length];
            for(int i=0;i< data.length;++i)
            {
                
                
                data[i]=row.getObject(i+1);
               // table.setValueAt(data[i],r, i);   // added
            }
            model.addRow(data);
            r++;
        }
        //table.setVisible(true);               // added
    JOptionPane.showMessageDialog(null,new JScrollPane(new JTable(model)));
}
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">                          
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        jTable1 = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jTable1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "Roll Number", "Name", "Subject", "Standard", "Total Questions"
            }
        ));
        jScrollPane1.setViewportView(jTable1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.DEFAULT_SIZE, 503, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>                        

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /*
         * Set the Nimbus look and feel
         */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /*
         * If Nimbus (introduced in Java SE 6) is not available, stay with the
         * default look and feel. For details see
         * http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(ViewPerformanceInTable.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ViewPerformanceInTable.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ViewPerformanceInTable.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ViewPerformanceInTable.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /*
         * Create and display the form
         */
        java.awt.EventQueue.invokeLater(new Runnable() {

            public void run() {
                new ViewPerformanceInTable().setVisible(true);
            }
        });
    }
    // Variables declaration - do not modify                     
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTable jTable1;
    // End of variables declaration                   
}