import { observable } from "mobx";
import { http } from 'libs';


class Store {
    @observable records = [];

    fetchRecords = () => {
        this.isFetching = true;
        return http.get('/api/jenkins/')
          .then(res => {
            const tmp = {};
            this.rawRecords = res;
            this.rawRecords.map(item => tmp[item.id] = item);
            this.idMap = tmp;
          })
          .finally(() => this.isFetching = false)
      };
}

export default new Store()