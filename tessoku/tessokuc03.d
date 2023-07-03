import std;

void main() {
    long D;
    readf("%d\n", D);

    auto stock = new long[](D+1);
    foreach (i; 1 .. D+1) {
        readf("%d\n", stock[i]);

        stock[i] += stock[i-1];
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long S, T;
        readf("%d %d\n", S, T);

        if (stock[S] == stock[T]) writeln("Same");
        else writeln(stock[S] > stock[T] ? S : T);
    }
}