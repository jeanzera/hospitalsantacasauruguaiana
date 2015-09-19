package br.edu.unipampa.model;
// Generated 29/07/2015 23:10:49 by Hibernate Tools 4.3.1

import java.util.Date;
import java.util.HashSet;
import java.util.Set;

/**
 * Prontuario generated by hbm2java
 */
public class Prontuario implements java.io.Serializable {

    private int prontuario;
    private int paciente;
    private int enfermeiro;
    private Integer boletimAtendimento;
    private String motivoAtendimento;
    private String estadoSaude;
    private String historiaOutras;
    private Boolean hospPrevia;
    private Boolean realCirurgias;
    private String quaisCirurgias;
    private Boolean utilizaMedic;
    private Boolean utilizaMedicAdeq;
    private String medicPreescrito;
    private String medicNaoPreescrito;
    private Boolean alergico;
    private String alergicoQuais;
    private Boolean de00099;
    private Boolean de00043;
    private String observDom1Classe2;
    private Boolean alterNutricao;
    private Boolean de00001;
    private String observDom2Classe1;
    private Boolean alterGlicemia;
    private Integer valorGlicemia;
    private Boolean de00179;
    private String observDom2Classe4;
    private Boolean alterAbdome;
    private Boolean ruidosHidroareos;
    private Boolean alterEliminIntestinal;
    private String freqEliminIntestinal;
    private String quantEliminIntestinal;
    private String tipoAlterEliminIntestinal;
    private Boolean de00011;
    private Boolean de00013;
    private String observDom3Classe2;
    private Boolean alterForca;
    private Boolean alterMobilidade;
    private Boolean de00085;
    private String observDom4Classe2;
    private Float freqCardiaca;
    private Float medidaPressao;
    private Boolean de00204;
    private String observDom4Classe4;
    private Boolean auxilioHigiene;
    private String tipoAuxilioHigiene;
    private Boolean de00108;
    private String observDom4Classe5;
    private Boolean perdaEstresse;
    private Boolean de00146;
    private String observDom9Classe2;
    private String outrasVacinas;
    private Boolean de00004;
    private String observDom11Classe1;
    private Boolean alteracoesPele;
    private String outrasAlteracoesPele;
    private Boolean recuperImediata;
    private String especCirurgia;
    private Boolean presencLesoes;
    private Boolean de00046;
    private Boolean deRecupRetardada;
    private String observDom11Classe2;
    private Boolean alterTemperatura;
    private Float taxTemperatura;
    private Boolean de00007;
    private Boolean de00006;
    private String observDom11Classe6;
    private String avaliacaoDor;
    private int escalaDor;
    private Boolean de00132;
    private Boolean de00133;
    private String observDom12Classe1;
    private Date dataPreenchimento;
    private Date dataCriacao;

    public Prontuario() {
    }

    public Prontuario(int prontuario) {
        this.prontuario = prontuario;
    }

    //Primeira etapa do formulario
    public Prontuario(int prontuario, int paciente, Integer boletimAtendimento, String motivoAtendimento, String estadoSaude, String historiaOutras, Boolean hospPrevia, Boolean realCirurgias, String quaisCirurgias, Boolean utilizaMedic, Boolean utilizaMedicAdeq, String medicPreescrito, String medicNaoPreescrito, Boolean alergico, String alergicoQuais, Boolean de00099, Boolean de00043, String observDom1Classe2) {
        this.prontuario = prontuario;
        this.paciente = paciente;
        // this.enfermeiro = enfermeiro;
        this.boletimAtendimento = boletimAtendimento;
        this.motivoAtendimento = motivoAtendimento;
        this.estadoSaude = estadoSaude;
        this.historiaOutras = historiaOutras;
        this.hospPrevia = hospPrevia;
        this.realCirurgias = realCirurgias;
        this.quaisCirurgias = quaisCirurgias;
        this.utilizaMedic = utilizaMedic;
        this.utilizaMedicAdeq = utilizaMedicAdeq;
        this.medicPreescrito = medicPreescrito;
        this.medicNaoPreescrito = medicNaoPreescrito;
        this.alergico = alergico;
        this.alergicoQuais = alergicoQuais;
        this.de00099 = de00099;
        this.de00043 = de00043;
        this.observDom1Classe2 = observDom1Classe2;
    }

    //Segunda etapa do formulario - nutrição
    public Prontuario(Boolean alterNutricao, Boolean de00001, String observDom2Classe1, Boolean alterGlicemia, Integer valorGlicemia, Boolean de00179, String observDom2Classe4, int prontu) {
        this.alterNutricao = alterNutricao;
        this.de00001 = de00001;
        this.observDom2Classe1 = observDom2Classe1;
        this.alterGlicemia = alterGlicemia;
        this.valorGlicemia = valorGlicemia;
        this.de00179 = de00179;
        this.observDom2Classe4 = observDom2Classe4;
        this.prontuario = prontu;
    }

    public Prontuario(Boolean alterAbdome, Boolean ruidosHidroareos, Boolean alterEliminIntestinal, String freqEliminIntestinal, String quantEliminIntestinal, String tipoAlterEliminIntestinal, Boolean de00011, Boolean de00013, String observDom3Classe2, int prontu) {
        this.alterAbdome = alterAbdome;
        this.ruidosHidroareos = ruidosHidroareos;
        this.alterEliminIntestinal = alterEliminIntestinal;
        this.freqEliminIntestinal = freqEliminIntestinal;
        this.quantEliminIntestinal = quantEliminIntestinal;
        this.tipoAlterEliminIntestinal = tipoAlterEliminIntestinal;
        this.de00011 = de00011;
        this.de00013 = de00013;
        this.observDom3Classe2 = observDom3Classe2;
        this.prontuario = prontu;
    }

    public Prontuario(Boolean alterForca, Boolean alterMobilidade, Boolean de00085, String observDom4Classe2, Float freqCardiaca, Float medidaPressao, Boolean de00204, String observDom4Classe4, Boolean auxilioHigiene, String tipoAuxilioHigiene, Boolean de00108, String observDom4Classe5, int prontu) {
        this.alterForca = alterForca;
        this.alterMobilidade = alterMobilidade;
        this.de00085 = de00085;
        this.observDom4Classe2 = observDom4Classe2;
        this.freqCardiaca = freqCardiaca;
        this.medidaPressao = medidaPressao;
        this.de00204 = de00204;
        this.observDom4Classe4 = observDom4Classe4;
        this.auxilioHigiene = auxilioHigiene;
        this.tipoAuxilioHigiene = tipoAuxilioHigiene;
        this.de00108 = de00108;
        this.observDom4Classe5 = observDom4Classe5;
        this.prontuario = prontu;
    }

    public Prontuario(Boolean perdaEstresse, Boolean de00146, String observDom9Classe2, int prontu) {
        this.perdaEstresse = perdaEstresse;
        this.de00146 = de00146;
        this.observDom9Classe2 = observDom9Classe2;
        this.prontuario = prontu;
    }

    public Prontuario(String outrasVacinas, Boolean de00004, String observDom11Classe1, Boolean alteracoesPele, String outrasAlteracoesPele, Boolean recuperImediata, String especCirurgia, Boolean presencLesoes, Boolean de00046, Boolean deRecupRetardada, String observDom11Classe2, Boolean alterTemperatura, Float taxTemperatura, Boolean de00007, Boolean de00006, String observDom11Classe6) {
        this.outrasVacinas = outrasVacinas;
        this.de00004 = de00004;
        this.observDom11Classe1 = observDom11Classe1;
        this.alteracoesPele = alteracoesPele;
        this.outrasAlteracoesPele = outrasAlteracoesPele;
        this.recuperImediata = recuperImediata;
        this.especCirurgia = especCirurgia;
        this.presencLesoes = presencLesoes;
        this.de00046 = de00046;
        this.deRecupRetardada = deRecupRetardada;
        this.observDom11Classe2 = observDom11Classe2;
        this.alterTemperatura = alterTemperatura;
        this.taxTemperatura = taxTemperatura;
        this.de00007 = de00007;
        this.de00006 = de00006;
        this.observDom11Classe6 = observDom11Classe6;
    }

    public Prontuario(String avaliacaoDor, int escalaDor, Boolean de00132, Boolean de00133, String observDom12Classe1) {
        this.avaliacaoDor = avaliacaoDor;
        this.escalaDor = escalaDor;
        this.de00132 = de00132;
        this.de00133 = de00133;
        this.observDom12Classe1 = observDom12Classe1;
    }

    public Prontuario(int prontuario, int paciente, int enfermeiro, Integer boletimAtendimento, String motivoAtendimento, String estadoSaude, Boolean hospPrevia, Boolean realCirurgias, String quaisCirurgias, Boolean utilizaMedic, Boolean utilizaMedicAdeq, String medicPreescrito, String medicNaoPreescrito, Boolean alergico, String alergicoQuais, Boolean de00099, Boolean de00043, String observDom1Classe2, Boolean alterNutricao, Boolean de00001, String observDom2Classe1, Integer valorGlicemia, Boolean de00179, String observDom2Classe4, Boolean alterAbdome, Boolean ruidosHidroareos, Boolean alterEliminIntestinal, String freqEliminIntestinal, String quantEliminIntestinal, Boolean de00011, Boolean de00013, String observDom3Classe2, Boolean alterForca, Boolean alterMobilidade, Boolean de00085, String observDom4Classe2, Float freqCardiaca, Float medidaPressao, Boolean de00204, String observDom4Classe4, Boolean auxilioHigiene, Boolean de00108, String observDom4Classe5, Boolean perdaEstresse, Boolean de00146, String observDom9Classe2, String outrasVacinas, Boolean de00004, String observDom11Classe1, Boolean alteracoesPele, String outrasAlteracoesPele, Boolean recuperImediata, String especCirurgia, Boolean presencLesoes, Boolean de00046, Boolean deRecupRetardada, String observDom11Classe2, Boolean alterTemperatura, Float taxTemperatura, Boolean de00007, Boolean de00006, String observDom11Classe6, int escalaDor, Boolean de00132, Boolean de00133, String observDom12Classe1, Date dataPreenchimento, Date dataCriacao, Set lesaos, Set cd2Dom1Classe2s, Set cd2Dom3Classe2s, Set cd2Dom11Classe6s, Set glicemias, Set cd2Dom12Classe1s, Set historiaFamiliarFatoresRiscos, Set cd1Dom9Classe2s, Set fr2Dom1Classe2s, Set cd2Dom11Classe2s, Set fr2Dom3Classe2s, Set alteracoesMobilidades, Set cd1Dom4Classe4s, Set fr2Dom11Classe2s, Set alteracoesAbdomes, Set cd1Dom4Classe5s, Set fr2Dom12Classe1s, Set cd1Dom4Classe2s, Set fr1Dom4Classe5s, Set fr1Dom9Classe2s, Set fr1Dom4Classe2s, Set fr1Dom4Classe4s, Set cd1Dom1Classe2s, Set cd1Dom2Classe1s, Set lesoesPeles, Set cd1Dom3Classe2s, Set cd1Dom11Classe2s, Set cd1Dom11Classe6s, Set cd1Dom12Classe1s, Set fr1Dom3Classe2s, Set fr1Dom11Classe2s, Set fr1Dom2Classe1s, Set vacinasRealizadases, Set fr1Dom2Classe4s, Set fr1Dom12Classe1s, Set umidadePeles, Set fr1Dom1Classe2s, Set upps, Set sinaisInfeccaos, Set fr1Dom11Classe6s, Set qualidadeDors, Set fr1Dom11Classe1s, Set ruidosHidroaereoses, Set perfusaoPerifericas, Set coloracaoPeles, Set pressaoArterials) {
        this.prontuario = prontuario;
        this.paciente = paciente;
        this.enfermeiro = enfermeiro;
        this.boletimAtendimento = boletimAtendimento;
        this.motivoAtendimento = motivoAtendimento;
        this.estadoSaude = estadoSaude;
        this.hospPrevia = hospPrevia;
        this.realCirurgias = realCirurgias;
        this.quaisCirurgias = quaisCirurgias;
        this.utilizaMedic = utilizaMedic;
        this.utilizaMedicAdeq = utilizaMedicAdeq;
        this.medicPreescrito = medicPreescrito;
        this.medicNaoPreescrito = medicNaoPreescrito;
        this.alergico = alergico;
        this.alergicoQuais = alergicoQuais;
        this.de00099 = de00099;
        this.de00043 = de00043;
        this.observDom1Classe2 = observDom1Classe2;
        this.alterNutricao = alterNutricao;
        this.de00001 = de00001;
        this.observDom2Classe1 = observDom2Classe1;
        this.valorGlicemia = valorGlicemia;
        this.de00179 = de00179;
        this.observDom2Classe4 = observDom2Classe4;
        this.alterAbdome = alterAbdome;
        this.ruidosHidroareos = ruidosHidroareos;
        this.alterEliminIntestinal = alterEliminIntestinal;
        this.freqEliminIntestinal = freqEliminIntestinal;
        this.quantEliminIntestinal = quantEliminIntestinal;
        this.de00011 = de00011;
        this.de00013 = de00013;
        this.observDom3Classe2 = observDom3Classe2;
        this.alterForca = alterForca;
        this.alterMobilidade = alterMobilidade;
        this.de00085 = de00085;
        this.observDom4Classe2 = observDom4Classe2;
        this.freqCardiaca = freqCardiaca;
        this.medidaPressao = medidaPressao;
        this.de00204 = de00204;
        this.observDom4Classe4 = observDom4Classe4;
        this.auxilioHigiene = auxilioHigiene;
        this.de00108 = de00108;
        this.observDom4Classe5 = observDom4Classe5;
        this.perdaEstresse = perdaEstresse;
        this.de00146 = de00146;
        this.observDom9Classe2 = observDom9Classe2;
        this.outrasVacinas = outrasVacinas;
        this.de00004 = de00004;
        this.observDom11Classe1 = observDom11Classe1;
        this.alteracoesPele = alteracoesPele;
        this.outrasAlteracoesPele = outrasAlteracoesPele;
        this.recuperImediata = recuperImediata;
        this.especCirurgia = especCirurgia;
        this.presencLesoes = presencLesoes;
        this.de00046 = de00046;
        this.deRecupRetardada = deRecupRetardada;
        this.observDom11Classe2 = observDom11Classe2;
        this.alterTemperatura = alterTemperatura;
        this.taxTemperatura = taxTemperatura;
        this.de00007 = de00007;
        this.de00006 = de00006;
        this.observDom11Classe6 = observDom11Classe6;
        this.escalaDor = escalaDor;
        this.de00132 = de00132;
        this.de00133 = de00133;
        this.observDom12Classe1 = observDom12Classe1;
        this.dataPreenchimento = dataPreenchimento;
        this.dataCriacao = dataCriacao;
    }

    public int getProntuario() {
        return this.prontuario;
    }

    public void setProntuario(int prontuario) {
        this.prontuario = prontuario;
    }

    public int getPaciente() {
        return this.paciente;
    }

    public void setPaciente(int paciente) {
        this.paciente = paciente;
    }

    public int getEnfermeiro() {
        return this.enfermeiro;
    }

    public void setEnfermeiro(int enfermeiro) {
        this.enfermeiro = enfermeiro;
    }

    public Integer getBoletimAtendimento() {
        return this.boletimAtendimento;
    }

    public void setBoletimAtendimento(Integer boletimAtendimento) {
        this.boletimAtendimento = boletimAtendimento;
    }

    public String getMotivoAtendimento() {
        return this.motivoAtendimento;
    }

    public void setMotivoAtendimento(String motivoAtendimento) {
        this.motivoAtendimento = motivoAtendimento;
    }

    public String getEstadoSaude() {
        return this.estadoSaude;
    }

    public void setEstadoSaude(String estadoSaude) {
        this.estadoSaude = estadoSaude;
    }

    public Boolean getHospPrevia() {
        return this.hospPrevia;
    }

    public void setHospPrevia(Boolean hospPrevia) {
        this.hospPrevia = hospPrevia;
    }

    public Boolean getRealCirurgias() {
        return this.realCirurgias;
    }

    public void setRealCirurgias(Boolean realCirurgias) {
        this.realCirurgias = realCirurgias;
    }

    public String getQuaisCirurgias() {
        return this.quaisCirurgias;
    }

    public void setQuaisCirurgias(String quaisCirurgias) {
        this.quaisCirurgias = quaisCirurgias;
    }

    public Boolean getUtilizaMedic() {
        return this.utilizaMedic;
    }

    public void setUtilizaMedic(Boolean utilizaMedic) {
        this.utilizaMedic = utilizaMedic;
    }

    public Boolean getUtilizaMedicAdeq() {
        return this.utilizaMedicAdeq;
    }

    public void setUtilizaMedicAdeq(Boolean utilizaMedicAdeq) {
        this.utilizaMedicAdeq = utilizaMedicAdeq;
    }

    public String getMedicPreescrito() {
        return this.medicPreescrito;
    }

    public void setMedicPreescrito(String medicPreescrito) {
        this.medicPreescrito = medicPreescrito;
    }

    public String getMedicNaoPreescrito() {
        return this.medicNaoPreescrito;
    }

    public void setMedicNaoPreescrito(String medicNaoPreescrito) {
        this.medicNaoPreescrito = medicNaoPreescrito;
    }

    public Boolean getAlergico() {
        return this.alergico;
    }

    public void setAlergico(Boolean alergico) {
        this.alergico = alergico;
    }

    public String getAlergicoQuais() {
        return this.alergicoQuais;
    }

    public void setAlergicoQuais(String alergicoQuais) {
        this.alergicoQuais = alergicoQuais;
    }

    public Boolean getDe00099() {
        return this.de00099;
    }

    public void setDe00099(Boolean de00099) {
        this.de00099 = de00099;
    }

    public Boolean getDe00043() {
        return this.de00043;
    }

    public void setDe00043(Boolean de00043) {
        this.de00043 = de00043;
    }

    public String getObservDom1Classe2() {
        return this.observDom1Classe2;
    }

    public void setObservDom1Classe2(String observDom1Classe2) {
        this.observDom1Classe2 = observDom1Classe2;
    }

    public Boolean getAlterNutricao() {
        return this.alterNutricao;
    }

    public void setAlterNutricao(Boolean alterNutricao) {
        this.alterNutricao = alterNutricao;
    }

    public Boolean getDe00001() {
        return this.de00001;
    }

    public void setDe00001(Boolean de00001) {
        this.de00001 = de00001;
    }

    public String getObservDom2Classe1() {
        return this.observDom2Classe1;
    }

    public void setObservDom2Classe1(String observDom2Classe1) {
        this.observDom2Classe1 = observDom2Classe1;
    }

    public Integer getValorGlicemia() {
        return this.valorGlicemia;
    }

    public void setValorGlicemia(Integer valorGlicemia) {
        this.valorGlicemia = valorGlicemia;
    }

    public Boolean getDe00179() {
        return this.de00179;
    }

    public void setDe00179(Boolean de00179) {
        this.de00179 = de00179;
    }

    public String getObservDom2Classe4() {
        return this.observDom2Classe4;
    }

    public void setObservDom2Classe4(String observDom2Classe4) {
        this.observDom2Classe4 = observDom2Classe4;
    }

    public Boolean getAlterAbdome() {
        return this.alterAbdome;
    }

    public void setAlterAbdome(Boolean alterAbdome) {
        this.alterAbdome = alterAbdome;
    }

    public Boolean getRuidosHidroareos() {
        return this.ruidosHidroareos;
    }

    public void setRuidosHidroareos(Boolean ruidosHidroareos) {
        this.ruidosHidroareos = ruidosHidroareos;
    }

    public Boolean getAlterEliminIntestinal() {
        return this.alterEliminIntestinal;
    }

    public void setAlterEliminIntestinal(Boolean alterEliminIntestinal) {
        this.alterEliminIntestinal = alterEliminIntestinal;
    }

    public String getFreqEliminIntestinal() {
        return this.freqEliminIntestinal;
    }

    public void setFreqEliminIntestinal(String freqEliminIntestinal) {
        this.freqEliminIntestinal = freqEliminIntestinal;
    }

    public String getQuantEliminIntestinal() {
        return this.quantEliminIntestinal;
    }

    public void setQuantEliminIntestinal(String quantEliminIntestinal) {
        this.quantEliminIntestinal = quantEliminIntestinal;
    }

    public Boolean getDe00011() {
        return this.de00011;
    }

    public void setDe00011(Boolean de00011) {
        this.de00011 = de00011;
    }

    public Boolean getDe00013() {
        return this.de00013;
    }

    public void setDe00013(Boolean de00013) {
        this.de00013 = de00013;
    }

    public String getObservDom3Classe2() {
        return this.observDom3Classe2;
    }

    public void setObservDom3Classe2(String observDom3Classe2) {
        this.observDom3Classe2 = observDom3Classe2;
    }

    public Boolean getAlterForca() {
        return this.alterForca;
    }

    public void setAlterForca(Boolean alterForca) {
        this.alterForca = alterForca;
    }

    public Boolean getAlterMobilidade() {
        return this.alterMobilidade;
    }

    public void setAlterMobilidade(Boolean alterMobilidade) {
        this.alterMobilidade = alterMobilidade;
    }

    public Boolean getDe00085() {
        return this.de00085;
    }

    public void setDe00085(Boolean de00085) {
        this.de00085 = de00085;
    }

    public String getObservDom4Classe2() {
        return this.observDom4Classe2;
    }

    public void setObservDom4Classe2(String observDom4Classe2) {
        this.observDom4Classe2 = observDom4Classe2;
    }

    public Float getFreqCardiaca() {
        return this.freqCardiaca;
    }

    public void setFreqCardiaca(Float freqCardiaca) {
        this.freqCardiaca = freqCardiaca;
    }

    public Float getMedidaPressao() {
        return this.medidaPressao;
    }

    public void setMedidaPressao(Float medidaPressao) {
        this.medidaPressao = medidaPressao;
    }

    public Boolean getDe00204() {
        return this.de00204;
    }

    public void setDe00204(Boolean de00204) {
        this.de00204 = de00204;
    }

    public String getObservDom4Classe4() {
        return this.observDom4Classe4;
    }

    public void setObservDom4Classe4(String observDom4Classe4) {
        this.observDom4Classe4 = observDom4Classe4;
    }

    public Boolean getAuxilioHigiene() {
        return this.auxilioHigiene;
    }

    public void setAuxilioHigiene(Boolean auxilioHigiene) {
        this.auxilioHigiene = auxilioHigiene;
    }

    public Boolean getDe00108() {
        return this.de00108;
    }

    public void setDe00108(Boolean de00108) {
        this.de00108 = de00108;
    }

    public String getObservDom4Classe5() {
        return this.observDom4Classe5;
    }

    public void setObservDom4Classe5(String observDom4Classe5) {
        this.observDom4Classe5 = observDom4Classe5;
    }

    public Boolean getPerdaEstresse() {
        return this.perdaEstresse;
    }

    public void setPerdaEstresse(Boolean perdaEstresse) {
        this.perdaEstresse = perdaEstresse;
    }

    public Boolean getDe00146() {
        return this.de00146;
    }

    public void setDe00146(Boolean de00146) {
        this.de00146 = de00146;
    }

    public String getObservDom9Classe2() {
        return this.observDom9Classe2;
    }

    public void setObservDom9Classe2(String observDom9Classe2) {
        this.observDom9Classe2 = observDom9Classe2;
    }

    public String getOutrasVacinas() {
        return this.outrasVacinas;
    }

    public void setOutrasVacinas(String outrasVacinas) {
        this.outrasVacinas = outrasVacinas;
    }

    public Boolean getDe00004() {
        return this.de00004;
    }

    public void setDe00004(Boolean de00004) {
        this.de00004 = de00004;
    }

    public String getObservDom11Classe1() {
        return this.observDom11Classe1;
    }

    public void setObservDom11Classe1(String observDom11Classe1) {
        this.observDom11Classe1 = observDom11Classe1;
    }

    public Boolean getAlteracoesPele() {
        return this.alteracoesPele;
    }

    public void setAlteracoesPele(Boolean alteracoesPele) {
        this.alteracoesPele = alteracoesPele;
    }

    public String getOutrasAlteracoesPele() {
        return this.outrasAlteracoesPele;
    }

    public void setOutrasAlteracoesPele(String outrasAlteracoesPele) {
        this.outrasAlteracoesPele = outrasAlteracoesPele;
    }

    public Boolean getRecuperImediata() {
        return this.recuperImediata;
    }

    public void setRecuperImediata(Boolean recuperImediata) {
        this.recuperImediata = recuperImediata;
    }

    public String getEspecCirurgia() {
        return this.especCirurgia;
    }

    public void setEspecCirurgia(String especCirurgia) {
        this.especCirurgia = especCirurgia;
    }

    public Boolean getPresencLesoes() {
        return this.presencLesoes;
    }

    public void setPresencLesoes(Boolean presencLesoes) {
        this.presencLesoes = presencLesoes;
    }

    public Boolean getDe00046() {
        return this.de00046;
    }

    public void setDe00046(Boolean de00046) {
        this.de00046 = de00046;
    }

    public Boolean getDeRecupRetardada() {
        return this.deRecupRetardada;
    }

    public void setDeRecupRetardada(Boolean deRecupRetardada) {
        this.deRecupRetardada = deRecupRetardada;
    }

    public String getObservDom11Classe2() {
        return this.observDom11Classe2;
    }

    public void setObservDom11Classe2(String observDom11Classe2) {
        this.observDom11Classe2 = observDom11Classe2;
    }

    public Boolean getAlterTemperatura() {
        return this.alterTemperatura;
    }

    public void setAlterTemperatura(Boolean alterTemperatura) {
        this.alterTemperatura = alterTemperatura;
    }

    public Float getTaxTemperatura() {
        return this.taxTemperatura;
    }

    public void setTaxTemperatura(Float taxTemperatura) {
        this.taxTemperatura = taxTemperatura;
    }

    public Boolean getDe00007() {
        return this.de00007;
    }

    public void setDe00007(Boolean de00007) {
        this.de00007 = de00007;
    }

    public Boolean getDe00006() {
        return this.de00006;
    }

    public void setDe00006(Boolean de00006) {
        this.de00006 = de00006;
    }

    public String getObservDom11Classe6() {
        return this.observDom11Classe6;
    }

    public void setObservDom11Classe6(String observDom11Classe6) {
        this.observDom11Classe6 = observDom11Classe6;
    }

    public Boolean getDe00132() {
        return this.de00132;
    }

    public void setDe00132(Boolean de00132) {
        this.de00132 = de00132;
    }

    public Boolean getDe00133() {
        return this.de00133;
    }

    public void setDe00133(Boolean de00133) {
        this.de00133 = de00133;
    }

    public String getObservDom12Classe1() {
        return this.observDom12Classe1;
    }

    public void setObservDom12Classe1(String observDom12Classe1) {
        this.observDom12Classe1 = observDom12Classe1;
    }

    public Date getDataPreenchimento() {
        return this.dataPreenchimento;
    }

    public void setDataPreenchimento(Date dataPreenchimento) {
        this.dataPreenchimento = dataPreenchimento;
    }

    public Date getDataCriacao() {
        return this.dataCriacao;
    }

    public void setDataCriacao(Date dataCriacao) {
        this.dataCriacao = dataCriacao;
    }

    /**
     * @return the escalaDor
     */
    public int getEscalaDor() {
        return escalaDor;
    }

    /**
     * @param escalaDor the escalaDor to set
     */
    public void setEscalaDor(int escalaDor) {
        this.escalaDor = escalaDor;
    }

    /**
     * @return the historiaOutras
     */
    public String getHistoriaOutras() {
        return historiaOutras;
    }

    /**
     * @param historiaOutras the historiaOutras to set
     */
    public void setHistoriaOutras(String historiaOutras) {
        this.historiaOutras = historiaOutras;
    }

    /**
     * @return the alterGlicemia
     */
    public Boolean getAlterGlicemia() {
        return alterGlicemia;
    }

    /**
     * @param alterGlicemia the alterGlicemia to set
     */
    public void setAlterGlicemia(Boolean alterGlicemia) {
        this.alterGlicemia = alterGlicemia;
    }

    /**
     * @return the tipoAlterEliminIntestinal
     */
    public String getTipoAlterEliminIntestinal() {
        return tipoAlterEliminIntestinal;
    }

    /**
     * @param tipoAlterEliminIntestinal the tipoAlterEliminIntestinal to set
     */
    public void setTipoAlterEliminIntestinal(String tipoAlterEliminIntestinal) {
        this.tipoAlterEliminIntestinal = tipoAlterEliminIntestinal;
    }

    /**
     * @return the tipoAuxilioHigiene
     */
    public String getTipoAuxilioHigiene() {
        return tipoAuxilioHigiene;
    }

    /**
     * @param tipoAuxilioHigiene the tipoAuxilioHigiene to set
     */
    public void setTipoAuxilioHigiene(String tipoAuxilioHigiene) {
        this.tipoAuxilioHigiene = tipoAuxilioHigiene;
    }

    /**
     * @return the avaliacaoDor
     */
    public String getAvaliacaoDor() {
        return avaliacaoDor;
    }

    /**
     * @param avaliacaoDor the avaliacaoDor to set
     */
    public void setAvaliacaoDor(String avaliacaoDor) {
        this.avaliacaoDor = avaliacaoDor;
    }

}
