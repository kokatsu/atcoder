import std;

void main() {
    long X, Y, Z, K;
    readf("%d %d %d %d\n", X, Y, Z, K);

    auto A = readln.chomp.split.to!(long[]);
    auto B = readln.chomp.split.to!(long[]);
    auto C = readln.chomp.split.to!(long[]);

    A.sort!"a > b";
    B.sort!"a > b";
    C.sort!"a > b";

    auto heap = 0L.repeat(K).array.heapify!"a > b";

    foreach (i, a; A) {
        foreach (j, b; B) {
            if (i * j > K) break;

            foreach (k, c; C) {
                if (i * j * k > K) break;

                long t = a + b + c;
                if (t > heap.front) {
                    heap.popFront;
                    heap.insert(t);
                }
            }
        }
    }

    auto res = new long[](K);
    foreach_reverse (ref r; res) {
        r = heap.front;
        heap.popFront;
    }

    foreach (r; res) r.writeln;
}