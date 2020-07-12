# Download and extract
FROM crazymax/7zip:latest as downloader
RUN wget -nc "https://www.autoitscript.com/cgi-bin/getfile.pl?autoit3/autoit-v3.zip"
RUN 7z x -o/tmp/autoit /autoit-v3.zip

# Winebottle
FROM legacylanparty/winecli:latest
COPY --from=downloader /tmp/autoit/* /app/

VOLUME ["/app", "/code"]