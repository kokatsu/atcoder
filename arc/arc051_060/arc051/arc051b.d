import std;

void main() {
    int K;
    readf("%d\n", K);

    auto fib = new int[](K+1);
    fib[0..2] = 1;
    foreach (i; 2 .. K+1) {
        fib[i] = fib[i-2] + fib[i-1];
    }

    int a = fib[K-1], b = fib[K];
    writeln(a, " ", b);
}