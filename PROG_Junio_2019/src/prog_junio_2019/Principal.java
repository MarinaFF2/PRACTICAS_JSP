package prog_junio_2019;

import BBDD.ConexionEstatica;
import BBDD.Usuario;
import Mantenimientos.Mantenimiento;

public class Principal extends javax.swing.JFrame {

    public Principal() {
        initComponents();
        this.usuarioAceptado = false;
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        ET_User = new javax.swing.JLabel();
        ET_Passw = new javax.swing.JLabel();
        CT_User = new javax.swing.JTextField();
        CT_Passw = new javax.swing.JTextField();
        BT_Aceptar = new javax.swing.JButton();
        BT_Cancelar = new javax.swing.JButton();
        ET_Perfiles = new javax.swing.JLabel();
        CB_Perfiles = new javax.swing.JComboBox();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Principal");
        addWindowListener(new java.awt.event.WindowAdapter() {
            public void windowClosing(java.awt.event.WindowEvent evt) {
                formWindowClosing(evt);
            }
        });

        ET_User.setText("Usuario:");

        ET_Passw.setText("Contraseña:");

        BT_Aceptar.setText("Aceptar");
        BT_Aceptar.setToolTipText("");
        BT_Aceptar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_AceptarActionPerformed(evt);
            }
        });

        BT_Cancelar.setText("Cancelar");
        BT_Cancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_CancelarActionPerformed(evt);
            }
        });

        ET_Perfiles.setText("Perfiles posibles:");
        ET_Perfiles.setEnabled(false);

        CB_Perfiles.setEnabled(false);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(52, 52, 52)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(ET_Perfiles)
                        .addGap(18, 18, 18)
                        .addComponent(CB_Perfiles, 0, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BT_Aceptar)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(BT_Cancelar))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(ET_Passw)
                            .addComponent(ET_User))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(CT_User, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(CT_Passw, javax.swing.GroupLayout.PREFERRED_SIZE, 147, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(66, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(36, 36, 36)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ET_User)
                    .addComponent(CT_User, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ET_Passw)
                    .addComponent(CT_Passw, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT_Aceptar)
                    .addComponent(BT_Cancelar))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 27, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(ET_Perfiles)
                    .addComponent(CB_Perfiles, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(43, 43, 43))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_AceptarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_AceptarActionPerformed
        Usuario u = ConexionEstatica.existeUsuario(CT_User.getText(), CT_Passw.getText());
        if (!this.usuarioAceptado) {
            CB_Perfiles.removeAllItems();//Borramos los items que pueda tener el combo.
            if (u != null) {
                System.out.println("Existe");
                System.out.println(u);
                for (int i = 1; i <= u.getNivel(); i++) {
                    CB_Perfiles.addItem(i);//Añadimos los perfiles que tendrá.
                }
                CB_Perfiles.setEnabled(true);
                ET_Perfiles.setEnabled(true);
                this.usuarioAceptado = true;
            } else {
                System.out.println("No existe");
            }
        }
        else {
            System.out.println(CB_Perfiles.getSelectedIndex());
            if (CB_Perfiles.getSelectedIndex()==0){
                Vent_Juego vj = new Vent_Juego();
                vj.setVisible(true);
            }
            else {
                Mantenimiento m = new Mantenimiento();
                m.setVisible(true);
            }
        }
    }//GEN-LAST:event_BT_AceptarActionPerformed

    private void BT_CancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_CancelarActionPerformed
        CT_User.setText("");
        CT_Passw.setText("");
        CB_Perfiles.removeAllItems();
        CB_Perfiles.setEnabled(false);
        ET_Perfiles.setEnabled(false);
        CT_User.requestFocus();
    }//GEN-LAST:event_BT_CancelarActionPerformed

    private void formWindowClosing(java.awt.event.WindowEvent evt) {//GEN-FIRST:event_formWindowClosing
        ConexionEstatica.cerrarBD();
    }//GEN-LAST:event_formWindowClosing

    private boolean usuarioAceptado;
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_Aceptar;
    private javax.swing.JButton BT_Cancelar;
    private javax.swing.JComboBox CB_Perfiles;
    private javax.swing.JTextField CT_Passw;
    private javax.swing.JTextField CT_User;
    private javax.swing.JLabel ET_Passw;
    private javax.swing.JLabel ET_Perfiles;
    private javax.swing.JLabel ET_User;
    // End of variables declaration//GEN-END:variables
}
