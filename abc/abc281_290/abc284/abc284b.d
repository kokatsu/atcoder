import std;

void main() {
    int T;
    readf("%d\n", T);

    foreach (_; 0 .. T) {
        int N;
        readf("%d\n", N);

        auto A = readln.chomp.split.to!(int[]);

        auto res = A.count!"a % 2 == 1";
        res.writeln;
    }
}