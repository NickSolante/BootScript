#!/bin/bash

yarn &&
yarn add typescript koa ts-node apollo-server apollo-server-koa &&
yarn add --dev jest ts-jest @types/jest &&
mkdir src src/module src/datasource &&
touch src/index.ts src/server.ts src/server.test.ts src/interface.ts &&
touch src/datasource/source.ts src/datasource/source.test.ts && 
touch src/module/baseModule.ts &&
touch tsconfig.json && 
echo '{
  "compilerOptions": {
    // "noEmit": true
   "outDir": "build",
   "target": "es2016",
   "lib": ["ESNext"],
   "moduleResolution": "Node",
   "esModuleInterop": true,
   "allowSyntheticDefaultImports": true,
   "module": "commonjs",
   "declaration": true,
   "emitDeclarationOnly": true,
  },
  "include": ["src/*.ts", "src/**/*.ts"],
  "exclude": [
    "node_modules",
    "build"
  ]
}' > tsconfig.json &&
mkdir config &&
touch config/.env.test &&
touch jest.config.js &&
echo "module.exports = {
  preset: 'ts-jest',
  testEnvironment: 'node',
  moduleNameMapper: {
    '@exmpl/(.*)': '<rootDir>/src/$1',
  },
}" > jest.config.js
touch Dockerfile docker-compose.yml &&
mkdir .github .github/workflows &&
touch .gitignore
echo ".DS_Store 
node_modules
.env"  > .gitignore