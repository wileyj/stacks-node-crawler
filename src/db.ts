import { PrismaClient } from '@prisma/client'

let prisma: PrismaClient;

declare global {
  var prisma: PrismaClient;
}

if (process.env.NODE_ENV === 'production') {
  prisma = new PrismaClient()
} else {
  if (!global.prisma) {
    global.prisma = new PrismaClient({
      log: ['query', 'info', 'warn', 'error']
    })
  }
  prisma = global.prisma
  prisma.$connect();
}



export {prisma};
