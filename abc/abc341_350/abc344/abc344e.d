import std;

struct Element {
    int front, back;
}

void main() {
    int N;
    readf("%d\n", N);

    int[] A = readln.chomp.split.to!(int[]);

    Element[int] D;
    foreach (i, a; A) {
        int f = i > 0 ? A[i - 1] : -1;
        int b = i < N - 1 ? A[i + 1] : -1;
        D[a] = Element(f, b);
    }

    int Q;
    readf("%d\n", Q);

    int f = A[0];
    foreach (_; 0 .. Q) {
        int[] query = readln.chomp.split.to!(int[]);

        if (query[0] == 1) {
            int x = query[1], y = query[2];
            Element e = Element(x, D[x].back);
            if (D[x].back != -1) {
                D[D[x].back].front = y;
            }
            D[x].back = y;
            D[y] = e;
        }
        else {
            int x = query[1];
            Element e = D[x];
            if (e.front == -1) {
                f = e.back;
                D[e.back].front = -1;
            }
            else if (e.back == -1) {
                D[e.front].back = -1;
            }
            else {
                D[e.front].back = e.back;
                D[e.back].front = e.front;
            }
            D.remove(x);
        }
    }

    int[] B;
    while (f != -1) {
        B ~= f;
        f = D[f].back;
    }

    string res = format("%(%d %)", B);
    res.writeln;
}
