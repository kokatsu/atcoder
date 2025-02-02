import std;

void main() {
    int N;
    readf("%d\n", N);

    auto A = new int[](N + 1);
    A[1 .. $] = readln.chomp.split.to!(int[]);

    int Q;
    readf("%d\n", Q);

    int[] res;
    foreach (_; 0 .. Q) {
        auto query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            A[query[1]] = query[2];
        }
        else {
            res ~= A[query[1]];
        }
    }

    writefln("%(%d\n%)", res);
}
