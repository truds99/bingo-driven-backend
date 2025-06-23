# 🎱 Bingo Driven

Poucos jogos são tão tradicionais e divertidos como o bom e velho bingo.

Neste jogo, o objetivo é gritar **"BINGO!"** assim que todos os números da sua cartela forem sorteados. A cartela é composta por números aleatórios ordenados. Quando alguém alega ter preenchido toda a cartela, realiza-se uma verificação para confirmar se todos os números foram realmente chamados.

Esse sistema facilita todo o processo: você cria novos jogos, sorteia números e salva tudo no banco de dados. Além disso, o projeto já vem com testes, arquitetura organizada e pronto para ser publicado em produção.

---

## ✅ Tecnologias Utilizadas

- Node.js
- Express
- TypeScript
- PostgreSQL (via Prisma ORM)
- Jest + SuperTest (testes de integração)
- Docker e Docker Compose
- GitHub Actions (CI/CD)
- Render (deploy do back-end)
- Vercel (deploy do front-end)

---

## 🚀 Como rodar o projeto com Docker Compose

1. Clone o repositório do back-end:

```bash
git clone https://github.com/truds99/bingo-driven-backend.git
cd bingo-driven-backend
```

2. Crie o arquivo `.env` na raiz e adicione:

```env
DATABASE_URL=postgres://postgres:dbzinhas2@db:5432/bingo
```

3. Rode o docker compose:

```bash
docker-compose up --build
```

A API estará rodando em: [http://localhost:5000](http://localhost:5000)

---

## 🧩 Como rodar o front-end com Docker

1. Clone o repositório do front-end:

```bash
git clone https://github.com/truds99/bingo-driven-frontend.git
cd bingo-driven-frontend
```

2. Crie o arquivo `.env` com a URL da API:

```env
VITE_BACKEND=http://localhost:5000
```

3. Rode o Docker:

```bash
docker build -t bingo-frontend .
docker run -p 8080:80 bingo-frontend
```

O front estará em: [http://localhost:8080](http://localhost:8080)

---

## 🐘 Como rodar as migrations (ambiente local Docker)

Com os containers já rodando, execute o seguinte comando:

```bash
docker exec -it bingo-api npx prisma migrate deploy
```

---

## 📦 Scripts úteis

| Comando                         | Descrição                         |
|-------------------------------|----------------------------------|
| `npm run dev`                 | Executa a aplicação em dev       |
| `npm run build`               | Compila os arquivos TS para JS   |
| `npm start`                   | Inicia o projeto compilado       |
| `npx prisma studio`           | Interface gráfica para o banco   |
| `npx prisma migrate dev`      | Cria e aplica migração local     |
| `npm test`                    | Executa os testes automatizados  |

---

## 🌐 Links de Produção

- API hospedada na Render: [https://bingo-driven-backend-1.onrender.com](https://bingo-driven-backend-1.onrender.com)
- Front-end na Vercel: [https://bingo-driven-frontend-gamma.vercel.app](https://bingo-driven-frontend-gamma.vercel.app)

---

## 🛠️ Variáveis de ambiente (produção)

A variável `DATABASE_URL` foi configurada no painel da Render com a Internal URL fornecida pelo banco PostgreSQL da própria plataforma.

---

## 🧪 Testes no CI

Os testes automatizados rodam via GitHub Actions e são obrigatórios para que o deploy seja feito. Commits com testes falhando não vão para produção.

---

## 📄 Licença

Este projeto é apenas para fins educacionais.

---