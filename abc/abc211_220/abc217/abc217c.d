import std;

void main() {
    int N;
    readf("%d\n", N);

    auto p = readln.chomp.split.to!(int[]);

    auto q = new int[](N);
    foreach (i; 0 .. N) {
        q[p[i]-1] = i + 1;
    }

    foreach (i; 0 .. N) {
        if (i == N - 1) {
            writeln(q[i]);
        }
        else {
            write(q[i], " ");
        }
    }
}