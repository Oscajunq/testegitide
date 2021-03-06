CREATE OR REPLACE PROCEDURE BSA."PR_CRIA_JOB_PROJETO2" (
	 P_CHAMADO                               IN TCHAMADO.TCHA_CODIGO%TYPE
)
IS
--
V_EXISTS NUMBER;
V_CODIGO TJOB.TJOB_CODIGO%TYPE;
--
CURSOR CHAMADO IS
       SELECT TCHA_PROJETO, TCHA_CLIENTE
         FROM TCHAMADO 
        WHERE TCHA_CODIGO = P_apontamento;
        ALTERANDO PARA VER COMO FICA NO GIT;
--
BEGIN
--
   FOR CAN IN CHAMADO LOOP
         --
         -- Planejamento
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Planejamento (Cronograma, Proje��o e Caderno de Projetos',  145,              SYSDATE,          0,               0,                   1);
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Reuni�es',  145,              SYSDATE,          0,               0,                   1);
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Levantamento (Requisitos ou Informa��es para o atendimento do projeto)',  145,              SYSDATE,          0,               0,                   1);
         --                                    
         --                           
         -- Desenho de Solu��o e Especifica��o Funcional
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '1-(DS e Especifica��o Funcional) - Constru��p dp documento',  145,              SYSDATE,          0,               0,                   1);
         --
         --                           
         -- Projeto L�gico
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '2-(Projeto L�gico) - Prot�tipos',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         -- Constru��o
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '3-(Constru��o) - Desenvolvimento - Aplica��o(Codifica��o e Testes Unit�rios)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '3-(Constru��o) - Desenvolvimento - Banco de Dados (Codifica��o e Testes Unit�rios)',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         -- Testes BSA Brasil
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Modelagem de Testes (Cria��o dos Casos de Testes no ALM e roteiriza��o)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Execucao de Casos de Testes e Evid�ncias',  145,              SYSDATE,          0,               0,                   1);
         --                                          
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Execucao de Casos de Testes Adicionais (Execu��o e Evid�ncias)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Corre��es dos erros de Q.A.',  145,              SYSDATE,          0,               0,                   1);
         --
         --         
         -- TU
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Carta de Vers�o e Starteam',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Instala��o no ambiente',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Execu��o de Testes DDS',  145,              SYSDATE,          0,               0,                   1);
         --                           
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Corre��o e Ajustes DDS',  145,              SYSDATE,          0,               0,                   1);
         --       
         --         
         -- HO
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Acompanhamento Homologa��o',  145,              SYSDATE,          0,               0,                   1);
         --           
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Exten��o de horas para atendimento',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Corre��es de Homologa��o (Gestor)',  145,              SYSDATE,          0,               0,                   1);
         --
         -- Gest�o
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gest�o) - Plano de Implanta��o, Implanta��o (Produ��o) e Acompanhamento da Implanta��o',  145,              SYSDATE,          0,               0,                   1);
         --                
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gest�o) - Atendimento Garantia',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gest�o) - Acompanhar P�s-Implanta��o(Produ��o)',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gest�o) - Acompanhamento do Projeto',  145,              SYSDATE,          0,               0,                   1);
         --         
   COMMIT;
   --
   END LOOP;
END PR_CRIA_JOB_PROJETO;
/
