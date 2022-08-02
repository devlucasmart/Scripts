#script:
    - sleep 5
    - curl -v http://www.interlife.com.br/
    - echo $?
#Notificar Sucesso:
  when: on_success
  script:
    - source notificacaoSucesso.sh
#Notificar Falha:
  <<: *deploy
  stage: notificacao
  tags: 
    - shell
  only: 
  when: on_failure
  script:
    - source notificacaoFalha.sh


