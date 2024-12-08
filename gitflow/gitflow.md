# Gitflow na prática

Olá, sou o Uanderson e hoje, vamos explorar um conceito muito importante: o Gitflow na prática, uma ferramenta essencial para trabalhar em equipe em projetos reais.

### O Que É Gitflow?

Imagina que você e sua equipe estão construindo uma casa. Cada um de vocês tem uma parte do projeto, e é fundamental que todos sigam um plano claro para que a casa não fique um caos. O Gitflow é esse plano para gerenciar o trabalho em equipe no Git, facilitando a colaboração e evitando conflitos.

Portanto, é um conjunto de boas práticas, desenvolvidas pelo Holandes Vincent Driessen em 2010.

![gitflow workflow](https://criarprogramas.com/wp-content/uploads/2023/07/image.png)
---

### GIT

- REPOSITÓRIO PRINCIPAL (REMOTE) - origin [Alias/Apelido Default do github] (Mas pode ser qualquer nome)
- BRANCHES
  - master (Trabalho pronto)
  - develop / dev (Trabalho que está sendo desenvolvido em progresso)
  - feature-XXX (É criada apartir da develop) - Após acabar faz o MERGE de volta na DEVELOP
  - feature-YYY (É criada apartir da develop) - Após acabar faz o MERGE de volta na DEVELOP
  - bugfix-AAA - Após acabar faz o MERGE de volta na DEVELOP
  - hotfix (É criada apartir da MASTER) - Após acabar faz o MERGE de volta na MASTER [Correções em produção]
  - release-x.y.z -   (Junção das branches de DEVELOP para enviar para a MASTER)

TAG:

- 1°: INCREMENTAL -> 0.1, 0.2...
- 2°: SEMANTIC VERSIONING x.y.z
    9.9.99-rc
  - Major - Grandes impactos - 3.0.0
  - Minor - Impactos menores / adições - 3.1.0
  - Patch - 3.1.100

- Commit (PUSH)
- Trazer atualizações (PULL)
- Selecionar especificamente um commit pra sua branch (Cherry picking)
- Tags (etiquetar um determinado ponto[commit] no tempo)
- Juntar duas branches (MERGE)
  - PULL REQUEST - workflow de aprovação de merges (pedido para o gestor de outra brach baixar na branch dele as atualizações)

> <https://www.atlassian.com/git/tutorials/comparing-workflows/gitflow-workflow>

---

## GIT  

### Repositório Principal (Remote)

- **Origin**: Este é o nome padrão dado ao repositório remoto no Git, normalmente apontando para o GitHub. Porém, você pode nomeá-lo como quiser. O repositório remoto é onde o código é armazenado online, permitindo que várias pessoas colaborem no projeto.

### Branches

As branches (ramificações) são essenciais para o fluxo de trabalho do Git, permitindo que diferentes partes do projeto sejam desenvolvidas de forma isolada.

1. **master (ou main)**:
   - **Descrição**: Esta branch contém o código que está pronto para ser lançado. É a versão estável do seu projeto.
   - **Uso**: Evite realizar alterações diretas nesta branch. Sempre que uma nova versão é lançada, ela deve ser feita a partir da master.

2. **develop (ou dev)**:
   - **Descrição**: É aqui que o trabalho em progresso acontece. Novas funcionalidades são integradas antes de serem lançadas.
   - **Uso**: É a branch onde as alterações são preparadas para a próxima versão.

3. **feature-XXX**:
   - **Descrição**: Branches criadas a partir da develop para desenvolver novas funcionalidades.
   - **Uso**: Após completar a nova funcionalidade, você faz o merge dessa branch de volta na develop.
   - **Comando**:

     ```bash
     git checkout -b feature-XXX
     ```

4. **feature-YYY**:
   - **Descrição**: Assim como feature-XXX, é outra branch de funcionalidade que também se origina da develop.
   - **Uso**: Finalizada, é mesclada de volta na develop.

5. **bugfix-AAA**:
   - **Descrição**: Usada para corrigir problemas encontrados na branch develop.
   - **Uso**: Após corrigir o bug, você faz o merge de volta na develop.

6. **hotfix**:
   - **Descrição**: Branch criada a partir da master para corrigir problemas críticos em produção.
   - **Uso**: Após a correção, ela é mesclada de volta na master.
   - **Comando**:

     ```bash
     git checkout -b hotfix
     ```

7. **release-x.y.z**:
   - **Descrição**: Usada para preparar uma nova versão do projeto, agrupando alterações feitas na develop antes de enviar para a master.
   - **Uso**: Quando todos os recursos e correções estão prontos, esta branch é mesclada na master.

### Tags

As tags são utilizadas para marcar pontos específicos no histórico do projeto, normalmente para identificar versões.

- **Incremental**: Identificações como 0.1, 0.2, etc. para versões incrementais.
- **Semantic Versioning (x.y.z)**: Uma abordagem para versionar o software que segue um padrão específico.
  - **Exemplo**: 9.9.99-rc (release candidate).
  - **Componentes**:
    - **Major**: Mudanças significativas que podem quebrar compatibilidade (ex: 3.0.0).
    - **Minor**: Novas funcionalidades que mantêm compatibilidade (ex: 3.1.0).
    - **Patch**: Correções de bugs que não adicionam novas funcionalidades (ex: 3.1.100).

### Comandos Principais

- **Commit (Push)**: Para salvar suas alterações localmente e enviar para o repositório remoto.

  ```bash
  git commit -m "Mensagem do commit"
  git push origin branch-name
  ```

- **Trazer Atualizações (Pull)**: Para atualizar sua branch local com as alterações do repositório remoto.

  ```bash
  git pull origin branch-name
  ```

- **Cherry Picking**: Selecionar um commit específico de outra branch para a sua.

  ```bash
  git cherry-pick <commit-hash>
  ```

- **Merge**: Juntar duas branches diferentes. Usado para integrar as alterações de uma branch em outra.

  ```bash
  git merge branch-name
  ```

- **Pull Request**: Um workflow para solicitar a revisão e aprovação das alterações feitas em uma branch antes de mesclá-las. É comum em plataformas como GitHub.

---
