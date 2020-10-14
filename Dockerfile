FROM alpine:latest

RUN apk add \
    iproute2 \
    ethtool \
    net-tools \
    htop \
    openssh \
    tcpdump \
    git \
    python3 \ 
    curl \
    nano \
    zsh \
    py-pip \
    && sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" \
    && git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions


COPY ressources/.zshrc /root/.zshrc

ENTRYPOINT [ "/bin/zsh" ]



