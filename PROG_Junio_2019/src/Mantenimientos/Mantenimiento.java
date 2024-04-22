package Mantenimientos;

public class Mantenimiento extends javax.swing.JFrame {

    public Mantenimiento() {
        initComponents();
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jMenuBar1 = new javax.swing.JMenuBar();
        MN_Usuarios = new javax.swing.JMenu();
        MN_Listar = new javax.swing.JMenuItem();
        MN_Add = new javax.swing.JMenuItem();
        MN_Opciones = new javax.swing.JMenu();
        MN_Salir = new javax.swing.JMenuItem();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Mantenimiento");

        MN_Usuarios.setText("Usuarios");

        MN_Listar.setText("Listar usuarios");
        MN_Listar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MN_ListarActionPerformed(evt);
            }
        });
        MN_Usuarios.add(MN_Listar);

        MN_Add.setText("Añadir usuarios");
        MN_Add.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MN_AddActionPerformed(evt);
            }
        });
        MN_Usuarios.add(MN_Add);

        jMenuBar1.add(MN_Usuarios);

        MN_Opciones.setText("Opciones");

        MN_Salir.setText("Salir");
        MN_Salir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                MN_SalirActionPerformed(evt);
            }
        });
        MN_Opciones.add(MN_Salir);

        jMenuBar1.add(MN_Opciones);

        setJMenuBar(jMenuBar1);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 400, Short.MAX_VALUE)
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 279, Short.MAX_VALUE)
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void MN_ListarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MN_ListarActionPerformed
        Listar_Usuarios lu = new Listar_Usuarios();
        lu.setVisible(true);
    }//GEN-LAST:event_MN_ListarActionPerformed

    private void MN_AddActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MN_AddActionPerformed
        Add_Usuario au = new Add_Usuario();
        au.setVisible(true);
    }//GEN-LAST:event_MN_AddActionPerformed

    private void MN_SalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_MN_SalirActionPerformed
        this.dispose();
    }//GEN-LAST:event_MN_SalirActionPerformed


    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JMenuItem MN_Add;
    private javax.swing.JMenuItem MN_Listar;
    private javax.swing.JMenu MN_Opciones;
    private javax.swing.JMenuItem MN_Salir;
    private javax.swing.JMenu MN_Usuarios;
    private javax.swing.JMenuBar jMenuBar1;
    // End of variables declaration//GEN-END:variables
}
