package br.edu.unipampa.dao;

import java.sql.*;
import br.edu.unipampa.model.Prontuario;
import br.edu.unipampa.web.Conexao;
import java.util.ArrayList;

public class ProntuarioDAO {

    private final Connection connection;

    public ProntuarioDAO() {
        this.connection = Conexao.criaConexao();
    }

    public ArrayList gerarItensFormularioDao(int codTabelaEstruturada) {
        //ver o LISTA USUARIOS da DAO

        try {
            ArrayList<String> itens = new ArrayList();
            try (PreparedStatement stmt = this.connection.prepareStatement("SELECT descricao FROM tab_estruturada "
                    + "WHERE cod_tabela = ? AND ativo = 1")) {
                stmt.setInt(1, codTabelaEstruturada);
                ResultSet rs = stmt.executeQuery();
                
                while (rs.next()) {
                    itens.add(rs.getString("descricao"));
                }
                rs.close();
            }
            //  connection = null;
            return itens;

        } catch (SQLException e) {
            System.out.println("Ocorreu o seguinte erro SQL: " + e);
            return null;
        }

    }

    public boolean insertProntuarioAPromocaoSaude(Prontuario prontuario) {
        String sql = "INSERT INTO prontuario ("
                + "prontuario, "
                + "boletim_atendimento, "
                + "motivo_atendimento, "
                + "estado_saude, "
                + "historia_outras, "
                + "hosp_previa, "
                + "real_cirurgias, "
                + "quais_cirurgias, "
                + "utiliza_medic, "
                + "utiliza_medic_adeq, "
                + "medic_preescrito, "
                + "medic_nao_preescrito, "
                + "alergico, "
                + "alergico_quais, "
                + "de_00099, "
                + "de_00043, "
                + "observ_dom1_classe2, "
                + "paciente, "
                + "enfermeiro, "
                + "data_preenchimento, "
                + "data_criacao) values (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,CURRENT_DATE,CURRENT_DATE)";

        try {
            // seta os valores
            try ( // prepared statement para inserção
                    PreparedStatement stmt = connection.prepareStatement(sql)) {
                // seta os valores
                stmt.setInt(1, prontuario.getProntuario());
                stmt.setInt(2, prontuario.getBoletimAtendimento());
                stmt.setString(3, prontuario.getMotivoAtendimento());
                stmt.setString(4, prontuario.getEstadoSaude());
                stmt.setString(5, prontuario.getHistoriaOutras());
                
                if (prontuario.getHospPrevia() == true) {
                    stmt.setBoolean(6, true);
                } else if (prontuario.getHospPrevia() == false) {
                    stmt.setBoolean(6, false);
                }
                if (prontuario.getRealCirurgias() == true) {
                    stmt.setBoolean(7, true);
                } else if (prontuario.getRealCirurgias() == false) {
                    stmt.setBoolean(7, false);
                }
                
                stmt.setString(8, prontuario.getQuaisCirurgias());
                
                if (prontuario.getUtilizaMedic() == true) {
                    stmt.setBoolean(9, true);
                } else if (prontuario.getUtilizaMedic() == false) {
                    stmt.setBoolean(9, false);
                }
                if (prontuario.getUtilizaMedicAdeq() == true) {
                    stmt.setBoolean(10, true);
                } else if (prontuario.getUtilizaMedicAdeq() == false) {
                    stmt.setBoolean(10, false);
                }
                
                stmt.setString(11, prontuario.getMedicPreescrito());
                stmt.setString(12, prontuario.getMedicNaoPreescrito());
                
                if (prontuario.getAlergico() == true) {
                    stmt.setBoolean(13, true);
                } else if (prontuario.getAlergico() == false) {
                    stmt.setBoolean(13, false);
                }
                stmt.setString(14, prontuario.getAlergicoQuais());
                
                if (prontuario.getDe00099() == true) {
                    stmt.setBoolean(15, true);
                } else if (prontuario.getDe00099() == false) {
                    stmt.setBoolean(15, false);
                }
                if (prontuario.getDe00043() == true) {
                    stmt.setBoolean(16, true);
                } else if (prontuario.getDe00043() == false) {
                    stmt.setBoolean(16, false);
                }
                stmt.setString(17, prontuario.getObservDom1Classe2());
                stmt.setInt(18, prontuario.getPaciente());
                stmt.setInt(19, 26);
                
//            java.util.Date dataPreenchimento = new java.util.Date();
//            java.sql.Date dataPreenchimentoSql = new java.sql.Date(dataPreenchimento.getTime());
//            
//            java.util.Date dataCriacao = new java.util.Date();
//            java.sql.Date dataCriacaoSql = new java.sql.Date(dataCriacao.getTime());
//
//            stmt.setDate(20, dataPreenchimentoSql);
//            stmt.setDate(21, dataCriacaoSql);
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

    public boolean insertProntuarioBNutricao(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "alter_nutricao=?, "
                + "de_00001=?, "
                + "observ_dom2_classe1=?, "
                + "alter_glicemia=?, "
                + "valor_glicemia=?, "
                + "de_00179=?, "
                + "observ_dom2_classe4=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                if (prontuario.getAlterNutricao() == true) {
                    stmt.setBoolean(1, true);
                } else if (prontuario.getAlterNutricao() == false) {
                    stmt.setBoolean(1, false);
                }
                
                if (prontuario.getDe00001() == true) {
                    stmt.setBoolean(2, true);
                } else if (prontuario.getDe00001() == false) {
                    stmt.setBoolean(2, false);
                }
                stmt.setString(3, prontuario.getObservDom2Classe1());
                
                if (prontuario.getAlterGlicemia() == true) {
                    stmt.setBoolean(4, true);
                } else if (prontuario.getAlterGlicemia() == false) {
                    stmt.setBoolean(4, false);
                }
                
                stmt.setInt(5, prontuario.getValorGlicemia());
                
                if (prontuario.getDe00179() == true) {
                    stmt.setBoolean(6, true);
                } else if (prontuario.getDe00179() == false) {
                    stmt.setBoolean(6, false);
                }
                stmt.setString(7, prontuario.getObservDom2Classe4());
                
                stmt.setInt(8, prontuario.getProntuario());
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

    public boolean insertProntuarioCEliminacaoTroca(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "alter_abdome=?, "
                + "ruidos_hidroaereos=?, "
                + "alter_elimin_intestinal=?, "
                + "freq_elimin_intestinal=?, "
                + "quant_elimin_intestinal=?, "
                + "tipo_alter_elimin_intestinal=?, "
                + "de_00011=?, "
                + "de_00013=?, "
                + "observ_dom3_classe2=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                if (prontuario.getAlterAbdome() == true) {
                    stmt.setBoolean(1, true);
                } else if (prontuario.getAlterAbdome() == false) {
                    stmt.setBoolean(1, false);
                }
                
                if (prontuario.getRuidosHidroareos() == true) {
                    stmt.setBoolean(2, true);
                } else if (prontuario.getRuidosHidroareos() == false) {
                    stmt.setBoolean(2, false);
                }
                
                if (prontuario.getAlterEliminIntestinal() == true) {
                    stmt.setBoolean(3, true);
                } else if (prontuario.getAlterEliminIntestinal() == false) {
                    stmt.setBoolean(3, false);
                }
                
                stmt.setString(4, prontuario.getFreqEliminIntestinal());
                stmt.setString(5, prontuario.getQuantEliminIntestinal());
                stmt.setString(6, prontuario.getTipoAlterEliminIntestinal());
                
                if (prontuario.getDe00011() == true) {
                    stmt.setBoolean(7, true);
                } else if (prontuario.getDe00011() == false) {
                    stmt.setBoolean(7, false);
                }
                
                if (prontuario.getDe00013() == true) {
                    stmt.setBoolean(8, true);
                } else if (prontuario.getDe00013() == false) {
                    stmt.setBoolean(8, false);
                }
                
                stmt.setString(9, prontuario.getObservDom3Classe2());
                
                stmt.setInt(10, prontuario.getProntuario());
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

    public boolean insertProntuarioDAtividadeRepouso(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "alter_forca=?, "
                + "alter_mobilidade=?, "
                + "de_00085=?, "
                + "observ_dom4_classe2=?, "
                + "freq_cardiaca=?, "
                + "medida_pressao=?, "
                + "de_00204=?, "
                + "observ_dom4_classe4=?, "
                + "auxilio_higiene=?, "
                + "tipo_auxilio_higiene=?, "
                + "de_00108=?, "
                + "observ_dom4_classe5=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                if (prontuario.getAlterForca() == true) {
                    stmt.setBoolean(1, true);
                } else if (prontuario.getAlterForca() == false) {
                    stmt.setBoolean(1, false);
                }
                
                if (prontuario.getAlterMobilidade() == true) {
                    stmt.setBoolean(2, true);
                } else if (prontuario.getAlterMobilidade() == false) {
                    stmt.setBoolean(2, false);
                }
                
                if (prontuario.getDe00085() == true) {
                    stmt.setBoolean(3, true);
                } else if (prontuario.getDe00085() == false) {
                    stmt.setBoolean(3, false);
                }
                
                stmt.setString(4, prontuario.getObservDom4Classe2());
                stmt.setFloat(5, prontuario.getFreqCardiaca());
                stmt.setFloat(6, prontuario.getMedidaPressao());
                
                if (prontuario.getDe00204() == true) {
                    stmt.setBoolean(7, true);
                } else if (prontuario.getDe00204() == false) {
                    stmt.setBoolean(7, false);
                }
                
                stmt.setString(8, prontuario.getObservDom4Classe4());
                
                if (prontuario.getAuxilioHigiene() == true) {
                    stmt.setBoolean(9, true);
                } else if (prontuario.getAuxilioHigiene() == false) {
                    stmt.setBoolean(9, false);
                }
                
                stmt.setString(10, prontuario.getTipoAuxilioHigiene());
                
                if (prontuario.getDe00108() == true) {
                    stmt.setBoolean(11, true);
                } else if (prontuario.getDe00108() == false) {
                    stmt.setBoolean(11, false);
                }
                
                stmt.setString(12, prontuario.getObservDom4Classe5());
                
                stmt.setInt(13, prontuario.getProntuario());
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

    public boolean insertProntuarioEEnfrentamentoEstresse(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "perda_estresse=?, "
                + "de_00146=?, "
                + "observ_dom9_classe2=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                if (prontuario.getPerdaEstresse() == true) {
                    stmt.setBoolean(1, true);
                } else if (prontuario.getPerdaEstresse() == false) {
                    stmt.setBoolean(1, false);
                }
                
                if (prontuario.getDe00146() == true) {
                    stmt.setBoolean(2, true);
                } else if (prontuario.getDe00146() == false) {
                    stmt.setBoolean(2, false);
                }
                
                stmt.setString(3, prontuario.getObservDom9Classe2());
                
                stmt.setInt(4, prontuario.getProntuario());
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

    public boolean insertProntuarioFSegurancaProtecao(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "outras_vacinas=?, "
                + "de_00004=?, "
                + "observ_dom11_classe1=?, "
                + "alteracoes_pele=?, "
                + "outras_alteracoes_pele=?, "
                + "recuper_imediata=?, "
                + "espec_cirurgia=?, "
                + "presenc_lesoes=?, "
                + "de_00046=?, "
                + "de_recup_retardada=?, "
                + "observ_dom11_classe2=?, "
                + "alter_temperatura=?, "
                + "tax_temperatura=?, "
                + "de_00007=?, "
                + "de_00006=?, "
                + "observ_dom11_classe6=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                stmt.setString(1, prontuario.getOutrasVacinas());
                
                if (prontuario.getDe00004() == true) {
                    stmt.setBoolean(2, true);
                } else if (prontuario.getDe00004() == false) {
                    stmt.setBoolean(2, false);
                }
                
                stmt.setString(3, prontuario.getObservDom11Classe1());
                
                if (prontuario.getAlteracoesPele() == true) {
                    stmt.setBoolean(4, true);
                } else if (prontuario.getAlteracoesPele() == false) {
                    stmt.setBoolean(4, false);
                }
                
                stmt.setString(5, prontuario.getOutrasAlteracoesPele());
                
                if (prontuario.getRecuperImediata() == true) {
                    stmt.setBoolean(6, true);
                } else if (prontuario.getRecuperImediata() == false) {
                    stmt.setBoolean(6, false);
                }
                
                stmt.setString(7, prontuario.getEspecCirurgia());
                
                if (prontuario.getPresencLesoes() == true) {
                    stmt.setBoolean(8, true);
                } else if (prontuario.getPresencLesoes() == false) {
                    stmt.setBoolean(8, false);
                }
                
                if (prontuario.getDe00046() == true) {
                    stmt.setBoolean(9, true);
                } else if (prontuario.getDe00046() == false) {
                    stmt.setBoolean(9, false);
                }
                
                if (prontuario.getDeRecupRetardada() == true) {
                    stmt.setBoolean(10, true);
                } else if (prontuario.getDeRecupRetardada() == false) {
                    stmt.setBoolean(10, false);
                }
                
                stmt.setString(11, prontuario.getObservDom11Classe2());
                
                if (prontuario.getAlterTemperatura() == true) {
                    stmt.setBoolean(12, true);
                } else if (prontuario.getAlterTemperatura() == false) {
                    stmt.setBoolean(12, false);
                }
                
                stmt.setFloat(13, prontuario.getTaxTemperatura());
                
                if (prontuario.getDe00007() == true) {
                    stmt.setBoolean(14, true);
                } else if (prontuario.getDe00007() == false) {
                    stmt.setBoolean(14, false);
                }
                
                if (prontuario.getDe00006() == true) {
                    stmt.setBoolean(15, true);
                } else if (prontuario.getDe00006() == false) {
                    stmt.setBoolean(15, false);
                }
                
                stmt.setString(16, prontuario.getObservDom11Classe6());
                
                stmt.setInt(17, prontuario.getProntuario());
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
    
    public boolean insertProntuarioGConforto(Prontuario prontuario) {
        String sql = "update prontuario set "
                + "avaliacao_dor=?, "
                + "escala_dor=?, "
                + "de_00132=?, "
                + "de_00133=?, "
                + "observ_dom12_classe1=? "
                + "where prontuario=?";

        try {
            try (PreparedStatement stmt = connection.prepareStatement(sql)
            // atualiza os valores
            ) {
                stmt.setString(1, prontuario.getAvaliacaoDor());
                stmt.setInt(2, prontuario.getEscalaDor());
                
                if (prontuario.getDe00132()== true) {
                    stmt.setBoolean(3, true);
                } else if (prontuario.getDe00132() == false) {
                    stmt.setBoolean(3, false);
                }
                
                if (prontuario.getDe00133()== true) {
                    stmt.setBoolean(4, true);
                } else if (prontuario.getDe00133() == false) {
                    stmt.setBoolean(4, false);
                }
                
                stmt.setString(5, prontuario.getObservDom12Classe1());
                
                stmt.setInt(6, prontuario.getProntuario());
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

}
