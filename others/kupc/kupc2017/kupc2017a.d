import std;

void main() {
    int N, K;
    readf("%d %d\n", N, K);

    auto a = readln.chomp.split.to!(int[]);

    a.sort!"a > b";

    int num;
    foreach (i, x; a) {
        num += x;
        if (num >= K) {
            writeln(i+1);
            return;
        }
    }

    writeln(-1);
}