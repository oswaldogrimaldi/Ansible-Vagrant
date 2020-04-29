# DevOps

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
