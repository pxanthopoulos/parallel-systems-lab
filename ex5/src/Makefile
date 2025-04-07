.KEEP_STATE:

OBJECT_DIR = ../objdir
HELPER_DIR = ../helper_functions
BIN_DIR = ../bin

CPP          = g++
NVCC        = /usr/local/cuda-12.1/bin/nvcc

CFLAGS  = -O3 -I$(HELPER_DIR) $(VALIDATE_FLAG)
NVCCFLAGS   =$(CFLAGS) --ptxas-options=-v -arch=sm_60\

LDFLAGS     =
LIBS        =

SEQ_HELP_OBJ = $(OBJECT_DIR)/main_sec.o $(OBJECT_DIR)/file_io.o $(OBJECT_DIR)/util.o 
CUDA_HELP_OBJ = $(OBJECT_DIR)/main_gpu.o  $(OBJECT_DIR)/file_io.o $(OBJECT_DIR)/util.o $(OBJECT_DIR)/error.o $(OBJECT_DIR)/alloc.o $(OBJECT_DIR)/seq_kmeans.o

all: $(BIN_DIR)/kmeans_seq $(BIN_DIR)/kmeans_cuda_naive $(BIN_DIR)/kmeans_cuda_transpose $(BIN_DIR)/kmeans_cuda_shared

#---------------------------------------------------------------------

$(BIN_DIR)/kmeans_seq: $(OBJECT_DIR)/seq_kmeans.o $(SEQ_HELP_OBJ)
	$(CPP) $(CFLAGS) $^ -o $@ $(LDFLAGS)

$(BIN_DIR)/kmeans_cuda_naive: $(OBJECT_DIR)/cuda_kmeans_naive.o $(CUDA_HELP_OBJ)
	$(NVCC) $(NVCCFLAGS) $^ -o $@ $(LDFLAGS) 

$(BIN_DIR)/kmeans_cuda_transpose: $(OBJECT_DIR)/cuda_kmeans_transpose.o $(CUDA_HELP_OBJ)
	$(NVCC) $(NVCCFLAGS) $^ -o $@ $(LDFLAGS) 
		
$(BIN_DIR)/kmeans_cuda_shared: $(OBJECT_DIR)/cuda_kmeans_shared.o $(CUDA_HELP_OBJ)
	$(NVCC) $(NVCCFLAGS) $^ -o $@ $(LDFLAGS) 


$(OBJECT_DIR)/cuda_kmeans_transpose.o: cuda_kmeans_transpose.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@

$(OBJECT_DIR)/cuda_kmeans_naive.o: cuda_kmeans_naive.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@
		
$(OBJECT_DIR)/cuda_kmeans_shared.o: cuda_kmeans_shared.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@


$(OBJECT_DIR)/main_gpu.o: main_gpu.cu
	$(NVCC) $(NVCCFLAGS) -c $< -o $@
				
$(OBJECT_DIR)/main_sec.o: main_sec.c
	$(CPP) $(CFLAGS) -c $< -o $@

$(OBJECT_DIR)/seq_kmeans.o: seq_kmeans.c
	$(CPP) $(CFLAGS) -c $< -o $@

$(OBJECT_DIR)/file_io.o: $(HELPER_DIR)/file_io.c
	$(CPP) $(CFLAGS) -c $< -o $@

$(OBJECT_DIR)/error.o: $(HELPER_DIR)/error.c
	$(CPP) $(CFLAGS) -c $< -o $@

$(OBJECT_DIR)/alloc.o: $(HELPER_DIR)/alloc.c
	$(CPP) $(CFLAGS) -c $< -o $@
		
$(OBJECT_DIR)/util.o: $(HELPER_DIR)/util.c
	$(CPP) $(CFLAGS) -c $< -o $@

clean:
	rm -rf $(OBJECT_DIR)/*.o $(BIN_DIR)/*
