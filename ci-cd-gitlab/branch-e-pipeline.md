## Criando branch 

No cenário de desenvolviemnto local criamos esses ambientes, através de **branchs** usando o GIT e enviamos  para o Gitlab (central do repositório do nosso condigo fonte).

- git status (verificar situação)
- git branch test  (criar)
- git branch --all (listar todas)
- git checkout teste (entrar nesse ambiente/branch)

## Especificando jobs a serem executados em uma branch

A config **only** nos permite espeficificar a BRANCH que queremos que cada 
JOB/TAREFA/STAGE execute ao fazemos um push para a central do repositório do nosso código (GitLab),
permitindo assim, separar a execução dos jobs. 

```bash
criar_imagens:
  only: # Apenas exceute esse JOB se for na branch main
    - main
  stage: build
  script:
    - echo "Criando as imagens..."
```

## Workflow Rules ( Regras de fluxo de trabalho )

# $CI_COMMIT_BRANCH -> Guarda a branch que estamos trabalhando atualmente

```bash
workflow:
  rules:
    - if: $CI_COMMIT_BRANCH != "main"
      when: never
    - when: always
```

## Entendendo a Arquitetura do GitLab

### Alterando a imagem padrão do Docker Executor







