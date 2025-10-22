const express = require('express');
const mongoose = require('mongoose');
const path = require('path');
const app = express();

const PORT = process.env.PORT || 8080;
const MONGO_URI = process.env.MONGO_URI || 'mongodb://<EC2-IP>:27017/wizdemo';

app.set('view engine', 'ejs');
app.use(express.static(path.join(__dirname, 'public')));

mongoose.connect(MONGO_URI)
  .then(() => console.log('Connected to MongoDB'))
  .catch(err => console.log('MongoDB connection error:', err));

app.get('/', (req, res) => {
  res.render('index', { message: 'Hello Wiz Team! App is running on AWS EKS!' });
});

app.listen(PORT, () => console.log(`Server running on port ${PORT}`));
