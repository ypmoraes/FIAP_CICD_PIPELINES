# 🚀 FIAP CI/CD Pipeline

Projeto de Pipeline CI/CD automatizado com GitHub Actions e Docker para deploy de aplicação web.

## 📋 Sobre o Projeto

Este repositório demonstra a implementação de um pipeline completo de CI/CD (Integração e Deploy Contínuo) usando GitHub Actions. O projeto foi desenvolvido por uma equipe de 5 integrantes como parte do curso FIAP.

## 👥 Equipe

- **Integrante 1:** Bruno Felipe
- **Integrante 2:** Gustavo Miranda
- **Integrante 3:** Vitor Viera
- **Integrante 4:** Yuri Moraes


## 🎯 Funcionalidades

✅ Build e testes automatizados  
✅ Criação de imagem Docker  
✅ Deploy automático em Staging e Production  
✅ Notificações de status do pipeline  
✅ Geração de relatórios

## 📁 Estrutura do Projeto

```
FIAP_CICD_PIPELINES/
├── .github/
│   └── workflows/
│       └── pipeline.yml      # Pipeline CI/CD
├── index.html                # Aplicação front-end
├── Dockerfile                # Container da aplicação
├── package.json              # Configurações do projeto
├── .gitignore               # Arquivos ignorados
└── README.md                # Este arquivo
```

## 🔧 Pré-requisitos

- Git instalado
- Conta no GitHub
- Conta no Docker Hub
- Node.js 18+ (para desenvolvimento local)
- Docker instalado (para testes locais)

## 🚀 Como Usar

### 1. Clone o Repositório

```bash
git clone https://github.com/ypmoraes/FIAP_CICD_PIPELINES.git
cd FIAP_CICD_PIPELINES
```

### 2. Configure os Secrets no GitHub

Acesse: `Settings` → `Secrets and variables` → `Actions` → `New repository secret`

Adicione:
- `DOCKER_USERNAME`: seu usuário do Docker Hub
- `DOCKER_PASSWORD`: sua senha do Docker Hub

### 3. Testar Localmente

```bash
# Instalar dependências (se necessário)
npm install

# Executar testes
npm test

# Build da aplicação
npm run build
```

### 4. Testar com Docker

```bash
# Construir a imagem
docker build -t minha-app .

# Executar o container
docker run -p 8080:80 minha-app

# Acessar no navegador
# http://localhost:8080
```

### 5. Fazer Deploy

#### Deploy em Staging (Ambiente de Teste)

```bash
git checkout -b develop
git add .
git commit -m "feat: nova funcionalidade"
git push origin develop
```

#### Deploy em Production (Ambiente Real)

```bash
git checkout main
git add .
git commit -m "release: versão 1.0"
git push origin main
```

## 🔄 Fluxo do Pipeline

```
Push/PR no GitHub
       ↓
┌──────────────────┐
│  STEP 1: BUILD   │
│  - Testes        │
│  - Validações    │
└──────────────────┘
       ↓
┌──────────────────┐
│  STEP 2: DOCKER  │
│  - Build Image   │
│  - Push to Hub   │
└──────────────────┘
       ↓
┌──────────────────┐
│  STEP 3: DEPLOY  │
│  - Staging/Prod  │
└──────────────────┘
       ↓
┌──────────────────┐
│ STEP 4: NOTIFY   │
│  - Relatório     │
│  - Notificações  │
└──────────────────┘
```

## 🌿 Branches

- **main**: Produção (ambiente real)
- **develop**: Staging (ambiente de teste)
- **feature/**: Novas funcionalidades

## 📊 Comandos Úteis

```bash
# Ver status do Git
git status

# Criar nova branch
git checkout -b feature/nova-funcionalidade

# Ver branches
git branch

# Mudar de branch
git checkout main

# Ver logs
git log --oneline

# Ver containers rodando
docker ps

# Ver imagens Docker
docker images

# Parar container
docker stop <container-id>
```

## 🐛 Troubleshooting

### Pipeline falhou no Step 1
- Verifique se `npm test` funciona localmente
- Confira o arquivo `package.json`

### Pipeline falhou no Step 2
- Verifique os secrets `DOCKER_USERNAME` e `DOCKER_PASSWORD`
- Confirme que sua conta Docker Hub está ativa

### Pipeline falhou no Step 3
- Verifique se a imagem foi criada no Step 2
- Confira os logs do pipeline

### Aplicação não abre no navegador
- Verifique se o container está rodando: `docker ps`
- Confirme a porta: `docker run -p 8080:80 minha-app`
- Acesse: http://localhost:8080

## 📚 Documentação

- [GitHub Actions](https://docs.github.com/pt/actions)
- [Docker](https://docs.docker.com/)
- [Nginx](https://nginx.org/en/docs/)

## 🔐 Segurança

- Nunca commite senhas ou tokens no código
- Use GitHub Secrets para informações sensíveis
- Mantenha as dependências atualizadas

## 📝 Licença

MIT License - Sinta-se livre para usar este projeto!

## 🤝 Contribuindo

1. Fork o projeto
2. Crie uma branch (`git checkout -b feature/nova-feature`)
3. Commit suas mudanças (`git commit -m 'feat: adiciona nova feature'`)
4. Push para a branch (`git push origin feature/nova-feature`)
5. Abra um Pull Request

## 📧 Contato

Dúvidas ou sugestões? Abra uma [issue](https://github.com/ypmoraes/FIAP_CICD_PIPELINES/issues)!

---

⭐ Se este projeto foi útil, deixe uma estrela!

**Desenvolvido com ❤️ pela equipe FIAP**