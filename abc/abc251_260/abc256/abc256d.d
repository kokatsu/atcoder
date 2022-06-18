import std;

void main() {
    int N;
    readf("%d\n", N);

    int lim = 2 * 10 ^^ 5;
    auto arr = new int[lim+1];

    foreach (_; 0 .. N) {
        int L, R;
        readf("%d %d\n", L, R);

        ++arr[L], --arr[R];
    }

    int u, v;
    int[] X, Y;
    bool isOK;
    foreach (i; 1 .. lim+1) {
        arr[i] += arr[i-1];

        if (!isOK && arr[i] > 0) {
            u = i;
            isOK = true;
        }
        else if (isOK && arr[i] == 0) {
            v = i;
            X ~= u, Y ~= v;
            isOK = false;
        }
    }

    foreach (x, y; zip(X, Y)) writeln(x, " ", y);
}