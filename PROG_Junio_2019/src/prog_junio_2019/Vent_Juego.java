package prog_junio_2019;

import BBDD.ConexionEstatica;
import Detalles.*;
import Tableros.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.util.LinkedList;
import javax.swing.Timer;

public class Vent_Juego extends javax.swing.JFrame {

    public Vent_Juego() {
        initComponents();
        bases = ConexionEstatica.obtenerBases();
        //Los for comentados son para comprobar que extraemos correctamente los datos de la BD.
//        for (int i = 0; i < bases.size(); i++) {
//            System.out.println(bases.get(i));
//        }
        ciudades = ConexionEstatica.obtenerCiudades();
//        for (int i = 0; i < ciudades.size(); i++) {
//            System.out.println(ciudades.get(i));
//        }
        sectores_nh = ConexionEstatica.obtenerSecoresNH();
//        for (int i = 0; i < sectores_nh.size(); i++) {
//            System.out.println(sectores_nh.get(i));
//        }
        humano = new Tablero();
        rellenaTablero(humano);
        rellenaTableroSwing();
        maquina = new Tablero();
        rellenaTablero(maquina);

        this.turno = "humano";

        temporizador = new Timer(1000, new ActionListener() {
            @Override
            public void actionPerformed(ActionEvent e) {
                if (turno.equals("maquina")) {
                    System.out.println("Turno de la máquina.");
                    //Actúa la máquina.
                    turno = "humano";
                }
                comprobarFindeJuego();
            }
        });
        temporizador.start();
    }

    private void comprobarFindeJuego() {
        //En este método comprobaremos si se cumplen las condiciones del fin del juego. Si esto ocurre se acaba.
    }

    private void rellenaTablero(Tablero t) {
        int f, c;
        //Tiene que tener al menos una ciudad.
        int pos = (int) (Math.random() * this.ciudades.size());
        Ciudad ci = (Ciudad) this.ciudades.get(pos);
        do {
            f = (int) (Math.random() * t.getFilas());
            c = (int) (Math.random() * t.getCols());
        } while (!t.setSector(ci, f, c)); //Mientras no coloquemos la ciudad se repite el bucle.

        //Tiene que tener al menos una base.
        pos = (int) (Math.random() * this.bases.size());
        Base b = (Base) this.bases.get(pos);
        do {
            f = (int) (Math.random() * t.getFilas());
            c = (int) (Math.random() * t.getCols());
        } while (!t.setSector(b, f, c)); //Mientras no coloquemos la base se repite el bucle.

        for (int i = 0; i < t.getFilas(); i++) {
            for (int j = 0; j < t.getCols(); j++) {
                Sector sec = this.generaSectorAleatorio();
                t.setSector(sec, i, j);//Si esa posición estaba vacía se habrá podido poner el sector.
            }
        }
        System.out.println(t);

    }

    private Sector generaSectorAleatorio() {
        Sector s = null;
        int pos;
        int alea = (int) (Math.random() * 3);

        switch (alea) {
            case 0:
                pos = (int) (Math.random() * this.ciudades.size());
                s = (Sector) this.ciudades.get(pos);
                break;
            case 1:
                pos = (int) (Math.random() * this.bases.size());
                s = (Sector) this.bases.get(pos);
                break;
            case 2:
                pos = (int) (Math.random() * this.sectores_nh.size());
                s = (Sector) this.sectores_nh.get(pos);
                break;
        }
        return s;
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jScrollPane1 = new javax.swing.JScrollPane();
        TB = new javax.swing.JTable();
        BT_Destino = new javax.swing.JButton();
        BT_Atacar = new javax.swing.JButton();
        PN_Destino = new javax.swing.JPanel();
        jLabel3 = new javax.swing.JLabel();
        CT_Fil_D = new javax.swing.JTextField();
        jLabel4 = new javax.swing.JLabel();
        CT_Col_D = new javax.swing.JTextField();
        PN_Origen = new javax.swing.JPanel();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        CT_Fil_O = new javax.swing.JTextField();
        CT_Col_O = new javax.swing.JTextField();
        BT_Detalle = new javax.swing.JButton();
        BT_Volver = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.DISPOSE_ON_CLOSE);
        setTitle("Ventana de juego");

        TB.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null},
                {null, null, null, null}
            },
            new String [] {
                "", "", "", ""
            }
        ));
        TB.addMouseListener(new java.awt.event.MouseAdapter() {
            public void mouseClicked(java.awt.event.MouseEvent evt) {
                TBMouseClicked(evt);
            }
        });
        jScrollPane1.setViewportView(TB);

        BT_Destino.setText("Seleccionar destino de ataque");
        BT_Destino.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_DestinoActionPerformed(evt);
            }
        });

        BT_Atacar.setText("Atacar");
        BT_Atacar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_AtacarActionPerformed(evt);
            }
        });

        PN_Destino.setBorder(javax.swing.BorderFactory.createTitledBorder("Destino del ataque"));

        jLabel3.setText("Fila");

        CT_Fil_D.setText("0");

        jLabel4.setText("Columna");

        CT_Col_D.setText("0");

        javax.swing.GroupLayout PN_DestinoLayout = new javax.swing.GroupLayout(PN_Destino);
        PN_Destino.setLayout(PN_DestinoLayout);
        PN_DestinoLayout.setHorizontalGroup(
            PN_DestinoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_DestinoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_DestinoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PN_DestinoLayout.createSequentialGroup()
                        .addComponent(jLabel3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CT_Fil_D, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(PN_DestinoLayout.createSequentialGroup()
                        .addComponent(jLabel4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 25, Short.MAX_VALUE)
                        .addComponent(CT_Col_D, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        PN_DestinoLayout.setVerticalGroup(
            PN_DestinoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_DestinoLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_DestinoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel3)
                    .addComponent(CT_Fil_D, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(PN_DestinoLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel4)
                    .addComponent(CT_Col_D, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        PN_Origen.setBorder(javax.swing.BorderFactory.createTitledBorder("Origen de ataque"));

        jLabel1.setText("Fila");

        jLabel2.setText("Columna");

        CT_Fil_O.setText("0");

        CT_Col_O.setText("0");

        javax.swing.GroupLayout PN_OrigenLayout = new javax.swing.GroupLayout(PN_Origen);
        PN_Origen.setLayout(PN_OrigenLayout);
        PN_OrigenLayout.setHorizontalGroup(
            PN_OrigenLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_OrigenLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_OrigenLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(PN_OrigenLayout.createSequentialGroup()
                        .addComponent(jLabel1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(CT_Fil_O, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(PN_OrigenLayout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 25, Short.MAX_VALUE)
                        .addComponent(CT_Col_O, javax.swing.GroupLayout.PREFERRED_SIZE, 68, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap())
        );
        PN_OrigenLayout.setVerticalGroup(
            PN_OrigenLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(PN_OrigenLayout.createSequentialGroup()
                .addContainerGap()
                .addGroup(PN_OrigenLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel1)
                    .addComponent(CT_Fil_O, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(18, 18, 18)
                .addGroup(PN_OrigenLayout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jLabel2)
                    .addComponent(CT_Col_O, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
        );

        BT_Detalle.setText("Detalle");
        BT_Detalle.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                BT_DetalleActionPerformed(evt);
            }
        });

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
                .addGap(124, 124, 124)
                .addComponent(BT_Destino)
                .addGap(0, 0, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addContainerGap(32, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(BT_Atacar)
                        .addGap(79, 79, 79)
                        .addComponent(BT_Detalle)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(BT_Volver))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                        .addGroup(layout.createSequentialGroup()
                            .addComponent(PN_Origen, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(18, 18, 18)
                            .addComponent(PN_Destino, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGap(15, 15, 15))
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 375, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addGap(30, 30, 30))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(31, 31, 31)
                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 79, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(BT_Destino)
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(PN_Origen, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addComponent(PN_Destino, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
                .addGap(18, 18, 18)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(BT_Atacar)
                    .addComponent(BT_Detalle)
                    .addComponent(BT_Volver))
                .addContainerGap())
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void BT_DestinoActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_DestinoActionPerformed
        int f = TB.getSelectedRow();
        int c = TB.getSelectedColumn();
        if (f != -1) {
            this.origenSeleccionado = false;
            Sector s = humano.getSector(f, c);
            if (s instanceof Base) {
                Base b = (Base) s;
                System.out.println("Base seleccionada: " + b);
                CT_Fil_O.setText(String.valueOf(f));
                CT_Col_O.setText(String.valueOf(c));
                this.origenSeleccionado = true;
            } else {
                javax.swing.JOptionPane.showMessageDialog(null, "Debes seleccionar una base militar", "Error de selección", javax.swing.JOptionPane.ERROR_MESSAGE);
            }
        } else {
            javax.swing.JOptionPane.showMessageDialog(null, "Debes seleccionar una base militar", "Error de selección", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BT_DestinoActionPerformed

    private void TBMouseClicked(java.awt.event.MouseEvent evt) {//GEN-FIRST:event_TBMouseClicked
        if (this.origenSeleccionado) {
            int f_atacar = TB.getSelectedRow();
            int c_atacar = TB.getSelectedColumn();
            CT_Fil_D.setText(String.valueOf(f_atacar));
            CT_Col_D.setText(String.valueOf(c_atacar));
        }
    }//GEN-LAST:event_TBMouseClicked

    private void BT_AtacarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_AtacarActionPerformed
        Base origen = (Base) humano.getSector(Integer.parseInt(CT_Fil_O.getText()), Integer.parseInt(CT_Col_O.getText()));
        Object cuantos[] = origen.getCuantosMisiles();
        int cuantosMisilesAtaque = (int) javax.swing.JOptionPane.showInputDialog(null, "Cuantos misiles?", "Elección de misiles", javax.swing.JOptionPane.QUESTION_MESSAGE, null, cuantos, cuantos[0]);
        if (this.turno.equals("humano")) {
            Sector s = maquina.getSector(Integer.parseInt(CT_Fil_D.getText()), Integer.parseInt(CT_Col_D.getText()));
            if (s instanceof Base) {
                Base b = (Base) s;
                if (cuantosMisilesAtaque >= b.getEscudo()) {
                    int pos = (int) (Math.random() * this.sectores_nh.size());
                    maquina.setSector((Sector) this.sectores_nh.get(pos), Integer.parseInt(CT_Fil_D.getText()), Integer.parseInt(CT_Col_D.getText()));
                    String mensaje = "El humano ha destruido el sector " + Integer.parseInt(CT_Fil_D.getText()) + "," + Integer.parseInt(CT_Col_D.getText()) + " de la máquina";
                    javax.swing.JOptionPane.showMessageDialog(null, mensaje, "Ataque", javax.swing.JOptionPane.INFORMATION_MESSAGE);
                } else {
                    javax.swing.JOptionPane.showMessageDialog(null, "Ataque fallado", "Ataque", javax.swing.JOptionPane.INFORMATION_MESSAGE);
                }
            }
            if (s instanceof Ciudad) {
                Ciudad c = (Ciudad) s;
                if (cuantosMisilesAtaque >= c.getEscudo()) {
                    int pos = (int) (Math.random() * this.sectores_nh.size());
                    maquina.setSector((Sector) this.sectores_nh.get(pos), Integer.parseInt(CT_Fil_D.getText()), Integer.parseInt(CT_Col_D.getText()));
                    String mensaje = "El humano ha destruido el sector " + Integer.parseInt(CT_Fil_D.getText()) + "," + Integer.parseInt(CT_Col_D.getText()) + " de la máquina";
                    javax.swing.JOptionPane.showMessageDialog(null, mensaje, "Ataque", javax.swing.JOptionPane.INFORMATION_MESSAGE);
                } else {
                    javax.swing.JOptionPane.showMessageDialog(null, "Ataque fallado", "Ataque", javax.swing.JOptionPane.INFORMATION_MESSAGE);
                }
            }
            //Si ya era un sector inhabitable no se hace nada.
            //this.turno="maquina"; //Cambiamos el turno para la máquina.
        }
    }//GEN-LAST:event_BT_AtacarActionPerformed

    private void BT_VolverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_VolverActionPerformed
        this.dispose();
    }//GEN-LAST:event_BT_VolverActionPerformed

    private void BT_DetalleActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_BT_DetalleActionPerformed
        int f = TB.getSelectedRow();
        int c = TB.getSelectedColumn();
        if (f!=-1){
            Sector s = humano.getSector(f, c);
            if (s instanceof Base){
                Base b = (Base) s;
                Detalle_Bases db = new Detalle_Bases(b);
                db.setVisible(true);
            }
            if (s instanceof Ciudad){
                Ciudad ci = (Ciudad) s;
                Detalle_Ciudad dciu = new Detalle_Ciudad(ci);
                dciu.setVisible(true);
            }
            if (s instanceof Sector_nh){
                Sector_nh snh = (Sector_nh) s;
                Detalle_Sector_No_Hab dsnh = new Detalle_Sector_No_Hab(snh);
                dsnh.setVisible(true);
            }
        }
        else {
            javax.swing.JOptionPane.showMessageDialog(null, "Debes seleccionar una celda", "Error de selección", javax.swing.JOptionPane.ERROR_MESSAGE);
        }
    }//GEN-LAST:event_BT_DetalleActionPerformed

    private void rellenaTableroSwing() {
        for (int i = 0; i < humano.getFilas(); i++) {
            for (int j = 0; j < humano.getCols(); j++) {
                TB.setValueAt(humano.getDescAbreviada(i, j), i, j);
            }
        }
    }

    private LinkedList bases;
    private LinkedList ciudades;
    private LinkedList sectores_nh;
    private Tablero humano;
    private Tablero maquina;
    private Timer temporizador;
    private String turno;
    private boolean origenSeleccionado;
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton BT_Atacar;
    private javax.swing.JButton BT_Destino;
    private javax.swing.JButton BT_Detalle;
    private javax.swing.JButton BT_Volver;
    private javax.swing.JTextField CT_Col_D;
    private javax.swing.JTextField CT_Col_O;
    private javax.swing.JTextField CT_Fil_D;
    private javax.swing.JTextField CT_Fil_O;
    private javax.swing.JPanel PN_Destino;
    private javax.swing.JPanel PN_Origen;
    private javax.swing.JTable TB;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JScrollPane jScrollPane1;
    // End of variables declaration//GEN-END:variables

}
