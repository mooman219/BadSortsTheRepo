use std::io;
use std::io::BufRead;

fn main(){
    let mut inputs = Vec::new();
    let input = io::stdin();
    let input = input.lock();
    for line in input.lines() {
        match line {
            Ok(line) => {
                match line.trim().parse::<u32>() {
                    Ok(number) => inputs.push(number.clone()),
                    Err(_) => {},
                }
            },
            Err(x) => println!("Error: {:?}", x),
        }
    }

    let mut iter = 0;
    loop {
        // end the loop at the end of the vector
        if iter >= inputs.len() {break;}

        // otherwise, sort it
        if iter == 0 || inputs.get(iter) >= inputs.get(iter - 1) {
            iter += 1;
        } else {
            inputs.swap(iter-1, iter);
            iter -= 1;
        }
    }

    println!("\n---Thanks for the input!---\nHere it is in sorted order:\n");
    for number in inputs {
        println!("{}", number);  
    }
}



