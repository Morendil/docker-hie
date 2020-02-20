FROM fpco/stack-build-small AS build
RUN git clone https://github.com/haskell/haskell-ide-engine.git
RUN cd haskell-ide-engine
RUN stack install
