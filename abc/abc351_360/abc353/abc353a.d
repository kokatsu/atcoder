import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] H = readln.chomp.split.to!(int[]);

    long P = H.countUntil!(h => h > H[0]);

    long res = P == -1 ? P : P + 1;
    res.writeln;
}
