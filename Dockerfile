FROM mcr.microsoft.com/dotnet/core/aspnet:3.1-buster-slim

RUN echo "deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster main contrib non-free \
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-updates main contrib non-free \
deb https://mirrors.tuna.tsinghua.edu.cn/debian/ buster-backports main contrib non-free \
deb https://mirrors.tuna.tsinghua.edu.cn/debian-security buster/updates main contrib non-free \
" > /etc/apt/sources.list

RUN apt-get update
RUN apt-get install -y --no-install-recommends libgdiplus libc6-dev
