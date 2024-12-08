# Aula de Gitflow - Comandos e Explicações

> Aula: https://www.youtube.com/watch?v=OYd7F-9qucc


## 1. Configuração do Ambiente

```bash
# Criar um diretório de trabalho para fazer os testes
mkdir gitflow
cd gitflow
git init
```

- **Descrição**: Criamos um novo diretório chamado `gitflow` e inicializamos um repositório Git vazio dentro dele.

```bash
ls -la
git status
```

- **Descrição**: Listamos os arquivos e verificamos o status do repositório. Aqui, devemos ver que não há commits feitos ainda.

## 2. Criação e Registro de Arquivos

```bash
echo "oi" > file1.txt
git status
```

- **Descrição**: Criamos um arquivo chamado `file1.txt` com o conteúdo "oi" e verificamos o status para ver que ele está não rastreado.

```bash
git add . # Tudo
git add file1.txt # Para arquivo específico
git status
```

- **Descrição**: Adicionamos o arquivo `file1.txt` ao índice do Git. O comando `git add .` adiciona todos os arquivos, enquanto `git add file1.txt` adiciona apenas o arquivo específico.

```bash
git commit -m "primeiro commit" # Commita na branch atual de trabalho
```

- **Descrição**: Realizamos o primeiro commit, salvando as mudanças na branch atual.

## 3. Criação da Branch de Desenvolvimento

```bash
git checkout -b dev # Cria e muda para a nova branch
```

- **Descrição**: Criamos uma nova branch chamada `dev` e mudamos para ela.

## 4. Trabalhando com Arquivos

```bash
nano file1.txt # Visualizar e alterar o conteúdo
touch file2.txt # Cria um arquivo
nano file2.txt # Visualizar e alterar o conteúdo
```

- **Descrição**: Editamos `file1.txt` e criamos um novo arquivo `file2.txt`, que também editamos.

```bash
git status # Mostrar as modificações
```

- **Descrição**: Verificamos as alterações feitas nos arquivos.

```bash
git add . 
git commit -m "segundo commit"
```

- **Descrição**: Adicionamos as mudanças e realizamos um segundo commit.

## 5. Criando e Mesclando Features

```bash
git checkout -b feature-XXX dev 
# Faça as alterações/implementações necessárias
git add .
git commit -m "minha feature XXX" # Commita/salva as alterações nessa branch de trabalho somente
```

- **Descrição**: Criamos uma nova branch `feature-XXX` a partir da `dev`, realizamos as alterações e as comitamos.

```bash
git checkout dev # Volta para a branch dev
git merge --no-ff feature-XXX 
# Vai abrir o editor default e tu aprova o merge
```

- **Descrição**: Voltamos para a branch `dev` e realizamos o merge da `feature-XXX`. A opção `--no-ff` garante que um commit de merge será criado, preservando o histórico.

## 6. Criando Outra Feature

```bash
git checkout -b feature-YYY dev 
# Faça as alterações/implementações necessárias
git add .
git commit -m "minha feature YYY" # Commita/salva as alterações nessa branch de trabalho somente
```

- **Descrição**: Criamos outra branch `feature-YYY` a partir da `dev`, fazemos alterações e realizamos o commit.

## 7. Conectando ao Repositório Remoto

```bash
git remote add origin endereco-do-repositorio-no-github/nome-do-repositorio.git
# Origin - Alias/Apelido default do GitHub, mas poderia ser outro
```

- **Descrição**: Adicionamos um repositório remoto chamado `origin`, que é o padrão para repositórios GitHub.

```bash
git remote
git remote -v
```

- **Descrição**: Verificamos as configurações do repositório remoto.

```bash
git push origin master 
git push -u origin master 
```

- **Descrição**: Enviamos a branch `master` para o repositório remoto. O segundo comando define `master` como upstream, permitindo push/pull sem especificar a branch posteriormente.

```bash
git push origin dev
git push origin feature-XXX 
git push origin feature-YYY
```

- **Descrição**: Enviamos as branches `dev`, `feature-XXX` e `feature-YYY` para o repositório remoto.

## 8. Criando Pull Request no GitHub

```markdown
# No GitHub
# Create pull request

BASE: A branch que quero trazer as alterações de outro branch (dev <- receber da feature)
COMPARE: É a branch que irei fornecer as alterações (branch feature -> envia para a dev)

- Informar o 'REVIEWER(S)' para que ele receba uma notificação.
- Inserir a mensagem no pull para o gestor.

# Normalmente, quando uma branch feature é aprovada e mesclada na dev, ela é deletada do repositório remoto. Sendo assim, também podemos deletar na nossa máquina local.
```

## 9. Atualizando a Branch de Desenvolvimento

```bash
# Mudar para a branch dev 
git checkout dev
git pull origin dev  # Atualizando a branch local com a remota
```

- **Descrição**: Mudamos para a branch `dev` e atualizamos com as alterações do repositório remoto.

## 10. Criando uma Release

```bash
git checkout -b release-v1 dev
# Faz a criação de instruções sobre a release
git add .
git commit -m "release notes"
git push origin release-v1
```

- **Descrição**: Criamos uma branch `release-v1` a partir da `dev`, adicionamos as notas de release e comitamos.

## 11. Criando Pull Requests para a Release

```markdown
# Da branch release iremos fazer dois pull requests:
1° - Para master (para colocar em produção)
2° - Para a develop/dev (para manter o estado atual [produção] e desenvolvimento)
```

## 12. Finalizando com a Master

```bash
git checkout master 
git pull origin master
git tag -a "v1"
git status
```

- **Descrição**: Mudamos para a branch `master`, atualizamos-a e criamos uma tag para a versão 1.

---

## Ferramenta de Gestão GIT

- **SmartGit**: Uma ferramenta de interface gráfica para gerenciar repositórios Git. Mais informações em: [SmartGit](https://www.syntevo.com/smartgit/).

---
