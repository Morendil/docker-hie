FROM fpco/stack-build-small AS build
RUN git clone https://github.com/haskell/haskell-ide-engine.git
WORKDIR /haskell-ide-engine
RUN stack install
RUN stack install hoogle

FROM fpco/stack-build-small
COPY --from=build /root/.local/bin /root/.local/bin
RUN stack update
RUN stack exec hoogle generate
