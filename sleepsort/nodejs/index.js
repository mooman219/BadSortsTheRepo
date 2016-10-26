const sleepPrint = num => {
  setTimeout(() => {
    console.log(num);
  }, num * 2);
}

process.argv.forEach(el => { sleepPrint(el); });

