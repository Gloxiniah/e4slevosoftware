## Data Structure


- The `data/` folder should have the following structure

  ```
  data/raw_data/unlabelled_data
                              ├── ADARP
                              
  ```
  `data/raw_data/unlabelled_data` contains open-access datasets, which are unlabelled with respect to the target task at hand, i.e. acute mood episode vs euthyima classification.
- The command

  ```bash
  python preprocess_ds.py --output_dir data/preprocessed/unsegmented_unlabelled --overwrite --e4selflearning
  ```

  will produce the folder `data/preprocessed/unsegmented_unlabelled` with the following structure:

  ```
  data/preprocessed/unsegmented
                    ├── ADARP

- The command

  ```bash
  python segment.py --output_dir data/preprocessed/sl512_ss128_unlabelled --segmentation_mode 1 --segment_length 512 --step_size 128 --overwrite --data_dir data/preprocessed/unsegmented_unlabelled
  ```

  will produce the folder `data/preprocessed/sl512_ss128_unlabelled` with the following structure:

  ```
  data/preprocessed/unsegmented
                    ├── ADARP

  ```