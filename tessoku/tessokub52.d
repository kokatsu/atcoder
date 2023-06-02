import std;

void main() {
    int N, X;
    readf("%d %d\n", N, X);

    auto A = readln.chomp.to!(dchar[]);

    DList!int dlist;
    dlist.insertBack(X-1);
    A[X-1] = '@';
    while (!dlist.empty) {
        auto f = dlist.front;
        dlist.removeFront;

        if (f - 1 >= 0 && A[f-1] == '.') {
            A[f-1] = '@';
            dlist.insertBack(f-1);
        }
        if (f + 1 < N && A[f+1] == '.') {
            A[f+1] = '@';
            dlist.insertBack(f+1);
        }
    }

    A.writeln;
}