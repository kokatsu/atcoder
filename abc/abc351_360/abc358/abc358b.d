import std;

void main() {
    int N, A;
    readf("%d %d\n", N, A);

    int[] T = readln.chomp.split.to!(int[]);

    int[] R = new int[](N);
    int S;
    foreach (i, t; T) {
        S = max(S, t) + A;
        R[i] = S;
    }

    string res = format("%(%d\n%)", R);
    res.writeln;
}
