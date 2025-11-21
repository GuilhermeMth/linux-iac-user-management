# Linux IaC – User Management

Script de *Infrastructure as Code* (IaC) em Shell Script para automatizar a criação de usuários, grupos, diretórios e permissões em sistemas Linux.  
Ideal para padronizar ambientes corporativos, ambientes de laboratório, testes de segurança e estudos de administração de sistemas.

---

## 📌 Funcionalidades

O script realiza automaticamente:

### 🔧 Estrutura de Diretórios
- `/publico`
- `/adm`
- `/ven`
- `/sec`

### 👥 Criação de Grupos
- `GRP_ADM`
- `GRP_VEN`
- `GRP_SEC`

### 🧑‍💼 Criação de Usuários
Cria usuários com:
- Shell `/bin/bash`
- Diretório home criado automaticamente
- Inclusão no grupo correto
- Senha inicial padrão (expirada no primeiro login)

Usuários gerados:

| Grupo | Usuários |
|-------|----------|
| **GRP_ADM** | carlos, maria, joao |
| **GRP_VEN** | debora, sebastiana, roberto |
| **GRP_SEC** | josefina, amanda, rogerio |

### 🔐 Permissões e Ownership
Configuração automática de donos e permissões:

| Diretório | Dono/Grupo | Permissão |
|-----------|------------|-----------|
| `/publico` | root:root | **777** |
| `/adm` | root:GRP_ADM | **770** |
| `/ven` | root:GRP_VEN | **770** |
| `/sec` | root:GRP_SEC | **770** |

---

## 🚀 Como usar

### 1. Clone o repositório
```bash
git clone https://github.com/seu-usuario/linux-iac-user-management.git
cd linux-iac-user-management
