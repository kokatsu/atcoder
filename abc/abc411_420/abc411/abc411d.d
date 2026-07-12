import std;

struct Query {
    int id, p;
    string s;
}

void main() {
    int N, Q;
    readf("%d %d\n", N, Q);

    auto queries = new Query[](Q);
    foreach (i; 0 .. Q) {
        auto query = readln.chomp.split;

        int id = to!int(query[0]);
        int p = to!int(query[1]);
        if (id == 2) {
            queries[i] = Query(id, p, query[2]);
        }
        else {
            queries[i] = Query(id, p, "");
        }
    }

    int num;
    string[] list;
    foreach_reverse (q; queries) {
        if (q.id == 1) {
            if (q.p == num) {
                num = 0;
            }
        }
        else if (q.id == 2) {
            if (q.p == num) {
                list ~= q.s;
            }
        }
        else if (num == 0) {
            num = q.p;
        }
    }

    list.reverse;

    string res = format("%-(%s%)", list);
    res.writeln;
}
