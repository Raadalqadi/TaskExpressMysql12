const { executeQuery } = require("./executeQuery");

const checkUserRole = async (user_id) => {
  const query = "Select Role From users where id = ?";
  const results = await executeQuery(query, [user_id]);

  if(results.length === 0){
    return null
  }
  return results[0].Role
};
module.exports = checkUserRole
