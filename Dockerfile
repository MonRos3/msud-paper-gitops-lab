FROM eclipse-temurin:21-jre

WORKDIR /server

ARG PAPER_VERSION=1.21.11
ARG PAPER_BUILD=98
RUN curl -o paper.jar -H "User-Agent: msud-paper-gitops-lab (https://github.com/Xata/msud-paper-gitops-lab)" \
    https://api.papermc.io/v2/projects/paper/versions/${PAPER_VERSION}/builds/${PAPER_BUILD}/downloads/paper-${PAPER_VERSION}-${PAPER_BUILD}.jar

RUN echo "eula=true" > eula.txt

EXPOSE 25565
CMD ["java", "-Xms1G", "-Xmx2G", "-jar", "paper.jar", "--nogui"]