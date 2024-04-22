package Detalles;

import Tableros.Sector_nh;


public class Detalle_Sector_No_Hab extends javax.swing.JFrame {

    /**
     * Creates new form Detalle
     */
    public Detalle_Sector_No_Hab() {
        initComponents();
    }

    public Detalle_Sector_No_Hab(Sector_nh snh) {
        initComponents();
        CT_Cod.setText(snh.getDescAbreviada());
        CT_Desc.setText(snh.getDescripcion());
        CB_Habitable.setSelected(snh.isHabitable());
    }

    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        PN_General = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        CT_Cod = new javax.swing.JTextField();
        CB_Habitable = new javax.swing.JCheckBox();
        PN_Datos = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        CT_Desc = new javax.swing.JTextField();
        BT_Volver = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Sector no habitable");

        PN_General.setBorder(javax.swing.BorderFactory.createTitledBorder("Información general"));

        jLabel1.setText("Código:");

        CB_Habitable.setText("Habitable?");

        javax.swing.GroupLayout PN_GeneralLayout = new javax.swing.GroupLayout(PN_General);
        PN_General.setLayout(PN_GeneralLayout);
        PN_GeneralLayout.setHorizontalGroup(
            PN_GeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_GeneralLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(CT_Cod, javax.swing.GroupLayout.PREFERRED_SIZE, 67, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(CB_Habitable, javax.swing.GroupLayout.PREFERRED_SIZE, 123, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        PN_GeneralLayout.setVerticalGroup(
            PN_GeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_GeneralLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_GeneralLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(CT_Cod, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(CB_Habitable))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        PN_Datos.setBorder(javax.swing.BorderFactory.createTitledBorder("Información del sector"));

        jLabel3.setText("Descripción:");

        javax.swing.GroupLayout PN_DatosLayout = new javax.swing.GroupLayout(PN_Datos);
        PN_Datos.setLayout(PN_DatosLayout);
        PN_DatosLayout.setHorizontalGroup(
            PN_DatosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, PN_DatosLayout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel3)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                .addComponent(CT_Desc, javax.swing.GroupLayout.PREFERRED_SIZE, 164, javax.swing.GroupLayout.PREFERRED_SIZE))
        );
        PN_DatosLayout.setVerticalGroup(
            PN_DatosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_DatosLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_DatosLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(CT_Desc, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(jLabel3))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        BT_Volver.setText("Volver");
        BT_Volver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_VolverActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(47, 47, 47)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addComponent(PN_General, javax.swing.GroupLayout.PREFERRED_SIZE, 276, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(PN_Datos, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(137, 137, 137)
                        .addComponent(BT_Volver)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(PN_General, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(PN_Datos, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(87, 87, 87)
                .addComponent(BT_Volver)
                .addContainerGap(23, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_VolverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_VolverActionPerformed
        this.dispose();
    }//GEN-LAST:event_BT_VolverActionPerformed

  
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_Volver;
    private javax.swing.JCheckBox CB_Habitable;
    private javax.swing.JTextField CT_Cod;
    private javax.swing.JTextField CT_Desc;
    private javax.swing.JPanel PN_Datos;
    private javax.swing.JPanel PN_General;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel3;
    // End of variables declaration//GEN-END:variables
}
