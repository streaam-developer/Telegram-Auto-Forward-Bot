# Use official Node.js image
FROM node:18-alpine

# Create app directory
WORKDIR /usr/src/app

# Install dependencies
COPY package*.json ./
RUN npm install

# Bundle app source
COPY . .

# Environment variables (can also pass during runtime)
ENV NODE_ENV=production
ENV BOT_TOKEN=your_bot_token
ENV SOURCE_CHANNEL_ID=your_source_channel
ENV DESTINATION_CHANNEL_ID=your_destination_channel
ENV ADMIN_ID=your_admin_id
ENV VERCEL_URL=your_bot_name.vercel.app

# Expose port (if using webhooks)
EXPOSE 3000

# Run the bot
CMD [ "node", "bot.js" ]
