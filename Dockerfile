FROM python:3.10-slim

ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /app


RUN apt-get update && \
    apt-get install -y git && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


COPY requirements.txt .


RUN pip install --no-cache-dir -r requirements.txt


COPY . .


CMD python preprocess_ds.py --output_dir data/preprocessed/unsegmented_unlabelled --overwrite --e4selflearning && \
    python segment.py --output_dir data/preprocessed/sl512_ss128_unlabelled --segmentation_mode 1 --segment_length 512 --step_size 128 --overwrite --data_dir data/preprocessed/unsegmented_unlabelled && \
    python pre_train.py --pretext_task masked_prediction --dataset data/preprocessed/sl512_ss128_unlabelled --output_dir runs/masked_prediction_test --e4selflearning
