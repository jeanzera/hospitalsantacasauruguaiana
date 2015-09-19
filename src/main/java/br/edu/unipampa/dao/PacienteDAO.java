package br.edu.unipampa.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import br.edu.unipampa.model.Paciente;
import br.edu.unipampa.web.Conexao;

public class PacienteDAO {

    private final Connection connection;

    public PacienteDAO() {
        this.connection = Conexao.criaConexao();
    }

    public int insert(Paciente paciente) {
        int retornoMetodo = -1;
        String sql = "INSERT INTO paciente (nome, sexo, endereco, profissao, escolaridade_tab, escolaridade_item, "
                + "naturalidade, pessoa_contato, moradia, nascimento, cidade, estado_civil_tab, estado_civil_item, "
                + "etnia_tab, etnia_item, servico_ref, telefone, rg) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";

        try {
            // seta os valores
            try ( // prepared statement para inserção
                    PreparedStatement stmt = connection.prepareStatement(sql, PreparedStatement.RETURN_GENERATED_KEYS)) {
                // seta os valores
                stmt.setString(1, paciente.getNome());
                stmt.setString(2, paciente.getSexo());
                stmt.setString(3, paciente.getEndereco());
                stmt.setString(4, paciente.getProfissao());
                switch (paciente.getEscolaridade()) {
                    case "Sem escolaridade":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 1);
                        break;
                    case "Ensino fundamental":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 2);
                        break;
                    case "Ensino medio":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 3);
                        break;
                    case "Ensino superior":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 4);
                        break;
                }
                stmt.setString(7, paciente.getNaturalidade());
                stmt.setString(8, paciente.getPessoaContato());
                stmt.setString(9, paciente.getMoradia());
                stmt.setString(10, paciente.getNascimento());
                stmt.setString(11, paciente.getCidade());

                switch (paciente.getEstadoCivil()) {
                    case "solteiro":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 1);
                        break;
                    case "casado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 2);
                        break;
                    case "separado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 3);
                        break;
                    case "divorciado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 4);
                        break;
                    case "viuvo":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 5);
                        break;
                }

                switch (paciente.getEtnia()) {
                    case "branco":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 1);
                        break;
                    case "negro":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 2);
                        break;
                    case "pardo":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 3);
                        break;
                    case "indio":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 4);
                        break;
                    case "mulato":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 5);
                        break;
                }
                stmt.setString(16, paciente.getServicoRef());
                stmt.setString(17, paciente.getTelefone());
                stmt.setString(18, paciente.getRg());

                if (verificaPacienteExiste(paciente.getNome(), paciente.getRg())) {
                    retornoMetodo = -1;
                    stmt.close();
                } else {
                    // executa
                    stmt.execute();
                    // recupera chave do objeto
                    ResultSet rs = stmt.getGeneratedKeys();
                    while (rs.next()) {
                        retornoMetodo = rs.getInt(1);
                    }
                }
            }
            //    connection = null;
            return retornoMetodo;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return retornoMetodo;
        }
    }

    public Boolean verificaPacienteExiste(String nome, String rg) {
        Boolean pacienteExiste = false;
        ResultSet rs = null;
        try {
            PreparedStatement stmt = this.connection.prepareStatement("SELECT nome, rg FROM paciente where nome = ? AND rg = ?");
            stmt.setString(1, nome);
            stmt.setString(2, rg);

            rs = stmt.executeQuery();
            if (rs.next()) {
                System.out.println("Usuário existe");
                pacienteExiste = true;
            } else {
                System.out.println("Usuário não existe");
                pacienteExiste = false;
            }

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
        }
        return pacienteExiste;
    }

    public boolean update(Paciente paciente) {
        String sql = "update paciente set nome=?, sexo=?, endereco=?, profissao=?, escolaridade_tab=?, escolaridade_item=?, "
                + "naturalidade=?, pessoa_contato=?, moradia=?, idade=?, nascimento=?, cidade=?, estado_civil_tab=?, estado_civil_item=?, "
                + "etnia_tab=?, etnia_item=?, servico_ref=?, telefone=? where idpaciente=?";

        try {
            // seta os valores
            try (PreparedStatement stmt = connection.prepareStatement(sql)) {
                // seta os valores
                stmt.setString(1, paciente.getNome());
                stmt.setString(2, paciente.getSexo());
                stmt.setString(3, paciente.getEndereco());
                stmt.setString(4, paciente.getProfissao());
                switch (paciente.getEscolaridade()) {
                    case "Sem escolaridade":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 1);
                        break;
                    case "Ensino fundamental":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 2);
                        break;
                    case "Ensino médio":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 3);
                        break;
                    case "Ensino superior":
                        stmt.setInt(5, 1);
                        stmt.setInt(6, 4);
                        break;
                }
                stmt.setString(7, paciente.getNaturalidade());
                stmt.setString(8, paciente.getPessoaContato());
                stmt.setString(9, paciente.getMoradia());
                stmt.setString(10, paciente.getNascimento());
                stmt.setString(11, paciente.getCidade());

                switch (paciente.getEstadoCivil()) {
                    case "solteiro":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 1);
                        break;
                    case "casado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 2);
                        break;
                    case "separado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 3);
                        break;
                    case "divorciado":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 4);
                        break;
                    case "viuvo":
                        stmt.setInt(12, 2);
                        stmt.setInt(13, 5);
                        break;
                }

                switch (paciente.getEtnia()) {
                    case "branco":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 1);
                        break;
                    case "negro":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 2);
                        break;
                    case "pardo":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 3);
                        break;
                    case "indio":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 4);
                        break;
                    case "mulato":
                        stmt.setInt(14, 3);
                        stmt.setInt(15, 5);
                        break;
                }
                stmt.setString(16, paciente.getServicoRef());
                stmt.setString(17, paciente.getTelefone());

                stmt.setInt(19, paciente.getIdpaciente());
                stmt.execute();

                stmt.close();
                //    connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }

    public List<Paciente> selectLista() {
        try {
            List<Paciente> pacientes = new ArrayList<>();
            try (PreparedStatement stmt = this.connection.prepareStatement("SELECT u.idpaciente, u.nome, u.telefone, p.prontuario, p.data_preenchimento FROM paciente AS u LEFT JOIN prontuario AS p ON u.idpaciente = p.paciente")) {
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {

                        Paciente paciente = new Paciente();

                        paciente.setNome(rs.getString("nome"));
                        paciente.setTelefone(rs.getString("telefone"));
                        paciente.setProntuario(rs.getString("prontuario"));
                        paciente.setDataUltimaConsulta(rs.getDate("data_preenchimento"));

                        pacientes.add(paciente);

                    }
                }

                stmt.close();
                //  connection = null;
            }

            return pacientes;

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }
    }

    public List<Paciente> selectListaByNome(String nome) {
        try {
            List<Paciente> pacientes = new ArrayList<>();
            try (PreparedStatement stmt = this.connection.prepareStatement("select * from paciente where nome like ?")) {
                stmt.setString(1, "%" + nome + "%");
                try (ResultSet rs = stmt.executeQuery()) {
                    while (rs.next()) {

                        Paciente paciente = new Paciente();
                        paciente.setNome(rs.getString("nome"));
                        paciente.setTelefone(rs.getString("telefone"));

                        pacientes.add(paciente);
                    }
                }

                stmt.close();
                //   connection = null;
            }

            return pacientes;

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }
    }

    public boolean delete(Paciente paciente) {
        try {
            try (PreparedStatement stmt = connection.prepareStatement("delete from paciente where idpaciente=?")) {
                stmt.setLong(1, paciente.getIdpaciente());
                stmt.execute();

                stmt.close();
                //    connection = null;
            }

            return true;
        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return false;
        }
    }

}
