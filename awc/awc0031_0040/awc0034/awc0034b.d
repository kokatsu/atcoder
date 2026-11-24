import std;

void main() {
    int N;
    readfln("%d", N);

    int[] P = readln.chomp.split.to!(int[]);

    P[] -= 1;

    int res = 1, now;
    while (now < N - 1) {
        ++res;
        now = P[now];
    }

    res.writeln;
}
