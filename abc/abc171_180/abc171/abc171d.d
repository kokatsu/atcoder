import std;

void main() {
    long N;
    readf("%d\n", N);

    auto A = readln.chomp.split.to!(long[]);

    long S;
    auto list = new long[]((10 ^^ 5) + 1);
    foreach (a; A) {
        S += a;
        ++list[a];
    }

    long Q;
    readf("%d\n", Q);

    foreach (_; 0 .. Q) {
        long B, C;
        readf("%d %d\n", B, C);

        S += (C - B) * list[B];
        list[C] += list[B];
        list[B] = 0;

        S.writeln;
    }
}
