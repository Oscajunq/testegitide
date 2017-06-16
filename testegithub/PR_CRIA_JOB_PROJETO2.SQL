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
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Planejamento (Cronograma, Projeção e Caderno de Projetos',  145,              SYSDATE,          0,               0,                   1);
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Reuniões',  145,              SYSDATE,          0,               0,                   1);
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '0-(Planejamento)- Levantamento (Requisitos ou Informações para o atendimento do projeto)',  145,              SYSDATE,          0,               0,                   1);
         --                                    
         --                           
         -- Desenho de Solução e Especificação Funcional
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '1-(DS e Especificação Funcional) - Construçãp dp documento',  145,              SYSDATE,          0,               0,                   1);
         --
         --                           
         -- Projeto Lógico
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '2-(Projeto Lógico) - Protótipos',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         -- Construção
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '3-(Construção) - Desenvolvimento - Aplicação(Codificação e Testes Unitários)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '3-(Construção) - Desenvolvimento - Banco de Dados (Codificação e Testes Unitários)',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         -- Testes BSA Brasil
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Modelagem de Testes (Criação dos Casos de Testes no ALM e roteirização)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Execucao de Casos de Testes e Evidências',  145,              SYSDATE,          0,               0,                   1);
         --                                          
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Execucao de Casos de Testes Adicionais (Execução e Evidências)',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '4-(Testes BSA) - Correções dos erros de Q.A.',  145,              SYSDATE,          0,               0,                   1);
         --
         --         
         -- TU
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Carta de Versão e Starteam',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Instalação no ambiente',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Execução de Testes DDS',  145,              SYSDATE,          0,               0,                   1);
         --                           
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '5-(TU) - Correção e Ajustes DDS',  145,              SYSDATE,          0,               0,                   1);
         --       
         --         
         -- HO
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Acompanhamento Homologação',  145,              SYSDATE,          0,               0,                   1);
         --           
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Extenção de horas para atendimento',  145,              SYSDATE,          0,               0,                   1);
         --
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '6-(HO) - Correções de Homologação (Gestor)',  145,              SYSDATE,          0,               0,                   1);
         --
         -- Gestão
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gestão) - Plano de Implantação, Implantação (Produção) e Acompanhamento da Implantação',  145,              SYSDATE,          0,               0,                   1);
         --                
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gestão) - Atendimento Garantia',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gestão) - Acompanhar Pós-Implantação(Produção)',  145,              SYSDATE,          0,               0,                   1);
         --         
         --
         SELECT MAX(TJOB_CODIGO)+1 INTO V_CODIGO FROM TJOB;
         --
         Insert into TJOB
         (TJOB_CODIGO, TJOB_CHAMADO,     TJOB_PROJETO,      TJOB_CLIENTE,      TJOB_DESCRICAO,  TJOB_RESPONSAVEL, TJOB_DT_ABERTURA, TJOB_PRIORIDADE, TJOB_TEMPO_ESTIMADO, TJOB_STATUS)
         Values
         (V_CODIGO,    P_CHAMADO,        CAN.TCHA_PROJETO,  CAN.TCHA_CLIENTE,  '7-(Gestão) - Acompanhamento do Projeto',  145,              SYSDATE,          0,               0,                   1);
         --         
   COMMIT;
   --
   END LOOP;
END PR_CRIA_JOB_PROJETO;
/
