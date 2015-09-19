package br.edu.unipampa.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.edu.unipampa.model.Usuario;
import br.edu.unipampa.web.Conexao;

public class UsuarioDAO {

    private final Connection connection;

    public UsuarioDAO() {
        this.connection = Conexao.criaConexao();
    }

    public boolean insert(Usuario usuario) {
        String sql = "INSERT INTO usuario (nome_usuario, email_usuario, usuario, senha_usuario, administrador_usuario, ativo_usuario) values (?,?,?,?,?,true)";

        try {
            // seta os valores
            try ( // prepared statement para inserção
                    PreparedStatement stmt = connection.prepareStatement(sql)) {
                // seta os valores
                stmt.setString(1, usuario.getNomeUsuario());
                stmt.setString(2, usuario.getEmailUsuario());
                stmt.setString(3, usuario.getUsuario());
                stmt.setString(4, usuario.getSenhaUsuario());
                
                if (usuario.getAdministradorUsuario() == true) {
                    stmt.setBoolean(5, true);
                } else if (usuario.getAdministradorUsuario() == false) {
                    stmt.setBoolean(5, false);
                }
                
                // executa
                stmt.execute();
                
                stmt.close();
                //   connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }

    public boolean update(Usuario usuario) {
        String sql = "update usuario set nome_usuario=?, email_usuario=?, usuario=?, senha_usuario=?, administrador_usuario=?, ativo_usuario=? where idusuario=?";

        try {
            // atualiza os valores
            try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                // atualiza os valores
                stmt.setString(1, usuario.getNomeUsuario());
                stmt.setString(2, usuario.getEmailUsuario());
                stmt.setString(3, usuario.getUsuario());
                stmt.setString(4, usuario.getSenhaUsuario());
                
                if (usuario.getAdministradorUsuario() == true) {
                    stmt.setBoolean(5, true);
                } else if (usuario.getAdministradorUsuario() == false) {
                    stmt.setBoolean(5, false);
                }
                
                if (usuario.getAtivoUsuario() == true) {
                    stmt.setBoolean(6, true);
                } else if (usuario.getAtivoUsuario() == false) {
                    stmt.setBoolean(6, false);
                }
                
                stmt.setInt(7, usuario.getIdusuario());
                stmt.execute();
                
                stmt.close();
                //   connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }
    
    public boolean alterarPermissao(Usuario usuario) {
        String sql = "update usuario set nome_usuario=?, email_usuario=?, usuario=?, senha_usuario=?, administrador_usuario=?, ativo_usuario=? where idusuario=?";

        try {
            // atualiza os valores
            try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                // atualiza os valores
                stmt.setString(1, usuario.getNomeUsuario());
                stmt.setString(2, usuario.getEmailUsuario());
                stmt.setString(3, usuario.getUsuario());
                stmt.setString(4, usuario.getSenhaUsuario());
                
                if (usuario.getAdministradorUsuario() == true) {
                    stmt.setBoolean(5, true);
                } else if (usuario.getAdministradorUsuario() == false) {
                    stmt.setBoolean(5, false);
                }
                
                if (usuario.getAtivoUsuario() == true) {
                    stmt.setBoolean(6, true);
                } else if (usuario.getAtivoUsuario() == false) {
                    stmt.setBoolean(6, false);
                }
                
                stmt.setInt(7, usuario.getIdusuario());
                stmt.execute();
                
                stmt.close();
                //   connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }

    public boolean delete(Usuario usuario) {
        try {
            try (PreparedStatement stmt = connection.prepareStatement("delete from usuario where idusuario=?")) {
                stmt.setLong(1, usuario.getIdusuario());
                stmt.execute();
                
                stmt.close();
                //   connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }

    public List<Usuario> selectLista() {
        try {
            List<Usuario> usuarios = new ArrayList<>();
            try (PreparedStatement stmt = this.connection.prepareStatement("select * from usuario")) {
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        
                        Usuario usuario = new Usuario();
                        usuario.setIdusuario(rs.getInt("idusuario"));
                        usuario.setNomeUsuario(rs.getString("nome_usuario"));
                        usuario.setEmailUsuario(rs.getString("email_usuario"));
                        usuario.setUsuario(rs.getString("usuario"));
                        usuario.setSenhaUsuario(rs.getString("senha_usuario"));
                        usuario.setAdministradorUsuario(rs.getBoolean("administrador_usuario"));
                        usuario.setAtivoUsuario(rs.getBoolean("ativo_usuario"));
                        usuarios.add(usuario);
                        
                    }
                }
                
                stmt.close();
                //  connection = null;
            }

            return usuarios;

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }
    }

    public Usuario selectById(int id) {
        try {
            try (PreparedStatement stmt = this.connection.prepareStatement("select * from usuario where idusuario = ?")) {
                stmt.setInt(1, id);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        
                        Usuario usuario = new Usuario();
                        usuario.setIdusuario(rs.getInt("idusuario"));
                        usuario.setNomeUsuario(rs.getString("nome_usuario"));
                        usuario.setEmailUsuario(rs.getString("email_usuario"));
                        usuario.setUsuario(rs.getString("usuario"));
                        usuario.setSenhaUsuario(rs.getString("senha_usuario"));
                        usuario.setAdministradorUsuario(rs.getBoolean("administrador_usuario"));
                        usuario.setAtivoUsuario(rs.getBoolean("ativo_usuario"));
                        
                        rs.close();
                        stmt.close();
                        return usuario;
                        
                    }
                }
                
                stmt.close();
                //   connection = null;
            }

            return null;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }
    }

    public List<Usuario> selectListaByNome(String nome) {
        try {
            List<Usuario> usuarios = new ArrayList<>();
            try (PreparedStatement stmt = this.connection.prepareStatement("select * from usuario where nome_usuario like ?")) {
                stmt.setString(1, "%" + nome + "%");
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {
                        
                        Usuario usuario = new Usuario();
                        usuario.setIdusuario(rs.getInt("idusuario"));
                        usuario.setNomeUsuario(rs.getString("nome_usuario"));
                        usuario.setEmailUsuario(rs.getString("email_usuario"));
                        usuario.setUsuario(rs.getString("usuario"));
                        usuario.setSenhaUsuario(rs.getString("senha_usuario"));
                        usuario.setAdministradorUsuario(rs.getBoolean("administrador_usuario"));
                        usuario.setAtivoUsuario(rs.getBoolean("ativo_usuario"));
                        
                        usuarios.add(usuario);
                    }
                }
                
                stmt.close();
                //   connection = null;
            }

            return usuarios;

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }
    }

    @SuppressWarnings("empty-statement")
    public Usuario getUsuarioLogin(String login, String senha) {
        PreparedStatement ps = null;

        ResultSet rs = null;
        try {
            PreparedStatement stmt = this.connection.prepareStatement("SELECT idusuario, nome_usuario FROM usuario where usuario = ? and senha_usuario = ?");
            // ps = c.prepareStatement("select id, nome from usuario where login = ? and senha = ?");
            stmt.setString(1, login);
            stmt.setString(2, senha);

            rs = stmt.executeQuery();

            if (rs.next()) {
                Usuario user = new Usuario();
                user.setIdusuario(rs.getInt("idusuario"));
                user.setUsuario(login);
                user.setSenhaUsuario(senha);
                user.setNomeUsuario(rs.getString("nome_usuario"));

                return user;
            }
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
        } finally {
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {;
                }
                rs = null;
            }
            if (ps != null) {
                try {
                    ps.close();
                } catch (SQLException e) {;
                }
                ps = null;
            }
            if (this.connection != null) {
//                try {
//                    this.connection.close();
//                } catch (SQLException e) {;
//                }
//                this.connection = null;
            }
        }
        return null;
    }

}
