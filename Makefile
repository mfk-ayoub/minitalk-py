
NAME = server client
BONUS = server_bonus client_bonus
CC = cc

CLIENT_SRC = main_cleint.c
SERVER_SRC = main_server.c

CLIENT_OBJ =  $(CLIENT_SRC:.c=.o)
SERVER_OBJ =  $(SERVER_SRC:.c=.o)


all: $(NAME)

client: $(CLIENT_OBJ)
	@$(CC) $(CLIENT_OBJ)   -o client
	@echo "\n✅ Client completed successfully! ✅"

server: $(SERVER_OBJ)
	@$(CC)  $(SERVER_OBJ)   -o server
	@echo "\n✅ Server completed successfully! ✅"

%.o: %.c
	@$(CC) -c $< -o $@

clean:
	@$(RM) $(CLIENT_OBJ) $(SERVER_OBJ)
	@find . -type d -name "__pycache__" -exec rm -rf {} +
	@echo "🧹 ...Cleaned objects!... 🧹"

fclean: clean
	@$(RM) client server client_bonus server_bonus
	@echo "🧹...Cleaned client and server ... 🧹"

re: fclean all 

.SECONDARY : $(CLIENT_OBJ) $(SERVER_OBJ) 
.PHONY: all  clean fclean re
.SILENT: