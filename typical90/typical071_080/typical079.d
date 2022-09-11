import std;

void main() {
    long H, W;
    readf("%d %d\n", H, W);

    auto A = new long[][](H);
    foreach (i; 0 .. H) A[i] = readln.chomp.split.to!(long[]);

    auto B = new long[][](H);
    foreach (i; 0 .. H) B[i] = readln.chomp.split.to!(long[]);

    long cnt;
    foreach (i; 0 .. H-1) {
        foreach (j; 0 .. W-1) {
            if (A[i][j] == B[i][j]) continue;

            long diff = B[i][j] - A[i][j];
            A[i][j] += diff;
            A[i+1][j] += diff;
            A[i][j+1] += diff;
            A[i+1][j+1] += diff;

            cnt += diff.abs;
        }
    }

    if (A == B) {
        writeln("Yes");
        cnt.writeln;
    }
    else {
        writeln("No");
    }
}