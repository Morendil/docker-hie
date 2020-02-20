FROM fpco/stack-build-small AS build
RUN git clone https://github.com/haskell/haskell-ide-engine.git
WORKDIR /haskell-ide-engine
RUN stack install

FROM fpco/stack-build-small
COPY --from=build /root/.local/bin /root/.local/bin
