import std;

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);
    int[] W = readln.chomp.split.to!(int[]);

    int[] M = new int[](N + 1);
    int res;
    foreach (a, w; zip(A, W)) {
        int X = min(w, M[a]), Y = max(w, M[a]);
        res += X;
        M[a] = Y;
    }

    res.writeln;
}
