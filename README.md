# DevOps

- União entre desenvolvedores e operações
- Uma questão de cultura empresarial, um framework
- O que eu acho?

# Infraestrutura como Código - IaaC

- A construção e configuração da infraestrutura é conhecida e versionada
- Histórico de alterações
- Facilidade de desfazer ou refazer alterações
- O processo é o mesmo de se desenvolver um software

## Servidores Imutáveis

- Também conhecidos como "phoenix servers"
- Modificações são realizadas nas imagens base, testadas e então replicadas
- A destruição e reconstrução dos servidores os colocam em um estado conhecido
- Assim como os contêineres, os dados que precisam persistir devem ficar fora da máquina (storage, nfs)
- Configurações específicas (metadados) podem ser obtidos da cloud ou por exemplo Zookeper/Consul.
- O processo é o mesmo de se desenvolver um software

### Vantagem?

- Não há necessidade de aplicar gerência de configuração nas máquinas
- Sem desculpas para não atualizar - nunca houve, mas...

# Ansible

- Descentralizado
- Curva de aprendizado baixíssima
- Legibilidade
- Precisa apenas de interpretador do Python
- [(R)?ex](https://www.rexify.org/) - "Ansible em Perl"
- E o Puppet?

# Rundeck

- Conhece as máquinas
- Flexível, executa qualquer tipo de provisionador - inclusive o bom e velho shell
- Trata cada **project** como um processo isolado, com suas variáveis, inventário de máquinas e jobs.
- E o Jenkins?
